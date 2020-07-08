#include "module.h"

Module::Module(QObject *parent) : QObject(parent) {

}

Module::Module(Request *req, Base *base) : m_req(req) {

    connect(&thread_1, SIGNAL(started()), SLOT(calculate()));                    // Запуск первого потока в котором выполняется извлечение запроса из спика QueueRequests и отправка в бибилиотеку 'calculate'
    connect(this, SIGNAL(finished()), &thread_1, SLOT(terminate()));

    connect(&thread_2, SIGNAL(started()), req, SLOT(getResult()));               // Второй поток для выполнения извлечения результата вычисления
    connect(req, SIGNAL(finished()), &thread_2, SLOT(terminate()));

    connect(req, SIGNAL(resultToBase(QString)), base, SLOT(setResult(QString)));               // Отправка результата на форму
    connect(req, SIGNAL(sigRequest(requests)), this, SLOT(add(requests)), Qt::DirectConnection);      // Добавление запроса на вычисление в QueueRequests
    connect(this, SIGNAL(sigResult(QString&)), req, SLOT(setResult(QString&)), Qt::DirectConnection); // Добавление результата в список QueueResult
    connect(this, &Module::sigQueueCount, base, &Base::setCountQueue);                                // Отправка количества запросов в очереди на форму

    this->moveToThread(&thread_1);
    req->moveToThread(&thread_2);
    thread_1.start();
    thread_2.start();

}

Module::~Module() {
    m_work = false;
}

void Module::calculate() {

    while (m_work) {
        if (!QueueRequests.isEmpty()) {
            QLibrary lib(LIB_CALC);
            double res = 0;

            if (!lib.load()) {
                m_in = tr("<div><font color=\"red\">Error loading shared library libcalculate.so</font></div><br>");
                emit sigResult(m_in);
                return;
            }

            typedef double (*DoIt)(int , double , double , int&);
            DoIt doIt = (DoIt) lib.resolve("DoIt");

            auto rreq = QueueRequests.dequeue();
            emit sigQueueCount(QueueRequests.count());

            if (doIt) {
                sleep(rreq.time);
                res = doIt(rreq.typeW, rreq.operandA, rreq.operandB, rreq.error);
            }

            if (rreq.error == 0) {
                if (res == int(res)) {
                    m_in = QString(std::to_string(int(res)).c_str());
                }
                else {
                    m_in = QString(std::to_string(res).c_str());
                }
            } else {
                if (rreq.error == 11)
                    m_in = tr("<div><font color=\"red\">Ошибка: Деление на ноль</font></div>");
            }
            emit sigResult(m_in);
        } else {
            sleep(0.2);
        }
    }
    emit finished();
}

void Module::add(requests req) {
    this->QueueRequests.enqueue(req);
    emit sigQueueCount(QueueRequests.count());
}

QString Module::getResult() {
    return m_in;
}

int Module::getQueueCount() {
    return m_count;
}

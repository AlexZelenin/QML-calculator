#ifndef REQUEST_H
#define REQUEST_H

#include <QObject>
#include <QQueue>
#include <QString>

#include <unistd.h>

class Request : public QObject
{
    Q_OBJECT
public:
    explicit Request(QObject *parent = nullptr);
    ~Request() {
        m_work = false;
    }

    struct requests {
        requests(){}
        int typeW = 0;
        double operandA = .0;
        double operandB = .0;
        int error = 0;
        uint time = 0;
    };

signals:
    void sigRequest(requests);
    void finished();
    void resultToBase(QString res);

public slots:

    /*
     * Функция формирования нового запроса из формы
     *
     */
    void setArgs(int typeWork, double operandA, double operandB, uint time);


    /*
     *Добавление результата QueueResult
     *
     */
    void setResult(QString &result) {
        QueueResult.enqueue(result);
    }

    /*
     * Проверка на наличие результатов в очереди и отправка на форму если есть в наличии
     *
     */
    void getResult() {
        while (m_work) {
            if (!QueueResult.isEmpty())
                emit resultToBase(QueueResult.dequeue());
            else
                sleep(0.2);
        }
        emit finished();
    }

private:

    QQueue<QString> QueueResult;
    QString m_result = "";
    bool m_work = true;
    int m_error = 0;
};

#endif // REQUEST_H

#ifndef MODULE_H
#define MODULE_H

#include <QObject>
#include <QString>
#include <QLibrary>
#include <QQueue>
#include <QThread>
#include <QTimerEvent>

#include <unistd.h>

#include "request.h"
#include "base.h"

#define LIB_CALC "./libcalculate.so"

class Module : public QObject {
    Q_OBJECT

    struct requests {
        requests(){}
        int typeW = 0;
        double operandA = .0;
        double operandB = .0;
        int error = 0;
        uint time = 0;
    };

public:
    explicit Module(QObject *parent = nullptr);
    Module(Request *req, Base *base);
    ~Module();

public slots:
    void calculate();
    QString getResult();
    void add(requests req);
    int getQueueCount();
    void setQueueCount(int count) {
        m_count = count;
    }

signals:
    void sigResult(QString&);
    void finished();
    void sigQueueCount(int value);

private:
    QString m_in;
    QThread thread_1;
    QThread thread_2;

    QQueue<requests> QueueRequests;
    int m_count = 0;
    Request *m_req;

    bool m_work = true;
};

#endif // MODULE_H

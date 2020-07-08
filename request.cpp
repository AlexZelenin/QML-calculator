#include "request.h"
#include "module.h"

Request::Request(QObject *parent) : QObject(parent) {

}

void Request::setArgs(int typeWork, double operandA, double operandB, uint time) {
    requests _req;
    _req.typeW = typeWork;
    _req.operandA = operandA;
    _req.operandB = operandB;
    _req.time = time;

    sigRequest(_req);
}


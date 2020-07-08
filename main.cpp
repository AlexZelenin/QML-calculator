#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>

#include "module.h"
#include "request.h"
#include "base.h"

int main(int argc, char *argv[]) {
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    Request request;
    Base base;
    Module module(&request, &base);

    QQmlApplicationEngine engine;
    QQmlContext *context = engine.rootContext();

    context->setContextProperty("_request", &request);
    context->setContextProperty("_base", &base);

    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    if (engine.rootObjects().isEmpty())
        return -1;


    return app.exec();
}

#ifndef BASE_H
#define BASE_H

#include <QObject>
#include <QFile>
#include <QVariantMap>
#include <QJsonObject>
#include <QJsonDocument>


/*
 * Базовый класс создан для работы с формой в одном потоке
 * В нем выполняется:
 * Получение результата из второго потока и отправка на форму
 * Сохранение позиции окна и его размеров
 * Загрузка позиции и размеров окна при запуске программы
 */
class Base : public QObject
{
    Q_OBJECT
public:
    explicit Base(QObject *parent = nullptr) : QObject(parent) {
        if (QFile::exists("./config.json")) {
            QFile fileJson("./config.json");
            fileJson.open(QIODevice::ReadOnly | QIODevice::Text);

            QString val;
            val = fileJson.readAll();
            fileJson.close();

            QJsonDocument d = QJsonDocument::fromJson(val.toUtf8());
            m_w = d.object().value(tr("W")).toInt();
            m_h = d.object().value(tr("H")).toInt();
            m_x = d.object().value(tr("X")).toInt();
            m_y = d.object().value(tr("Y")).toInt();
        }
        else  {
            m_h = 450;
            m_w = 350;
            m_x = 0;
            m_y = 0;
        }
    }

signals:
    void sigCountQueue(int count);
    void sigResult(QString value);

public slots:
    void setCountQueue(int count) {
        emit sigCountQueue(count);
    }

    void setResult(QString result) {
        sigResult(result);
    }

    void saveXPos(int x) {
        save("X", x);
    }

    void saveYPos(int y) {
        save("Y", y);
    }

    void saveWidth(int w) {
        save("W", w);
    }

    void saveHeight(int h) {
        save("H", h);
    }

public slots:

    int getW() { return m_w; }
    int getH() { return m_h; }
    int getX() { return m_x; }
    int getY() { return m_y; }

private:

    int m_x, m_y, m_h, m_w;

    QVariantMap config;

    void save(const char *arg, int value) {
        QFile fileJson("./config.json");

        fileJson.open(QIODevice::WriteOnly);

        config.insert(arg, value);
        fileJson.write(QJsonDocument(QJsonObject::fromVariantMap(config)).toJson());
        fileJson.close();
    }

};

#endif // BASE_H

#ifndef BECKEND_H
#define BECKEND_H


#include <QObject>
#include <QJsonObject>
#include <QJsonDocument>
#include <QJsonArray>
#include <QJsonValue>
#include <QThread>

#include "client.h"

class Backend : public QObject
{
    Q_OBJECT
    Q_PROPERTY(bool currentStatus READ getStatus NOTIFY statusChanged)

public:
    explicit Backend(QObject *parent = nullptr);
    bool getStatus();

signals:
    void statusChanged(QString newStatus);
    void someError(QString err);
    void someMessage(QString msg);
    void connectStart();

public slots:
    void setStatus(bool newStatus);
    void receivedSomething(QString msg);
    void gotError(QAbstractSocket::SocketError err);
    void sendClicked(QString msg);
    void connectClicked();
    void disconnectClicked();
    void emitation(QString hand);
    void sendJoints(QString input1,QString input2,QString input3,QString input4,QString input5,QString input6,QString input7,QString input8,QString input9, QString input10,QString input11, QString input12,QString input13, QString input14, QString input15, QString input16, QString input17, QString input18, QString input19, QString input20, QString hand);

private:
    Client *client;
};

#endif // BECKEND_H

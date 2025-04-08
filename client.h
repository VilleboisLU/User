#ifndef CLIENT_H
#define CLIENT_H


#include <QString>
#include <QTcpSocket>
#include <QDataStream>
#include <QTimer>

class Client : public QObject
{
    Q_OBJECT

public:
    Client();
    Client(const QString host, int port);

    QTcpSocket *tcpSocket;
    bool getStatus();

public slots:
    void closeConnection();
    void connect2host();

signals:
    void statusChanged(bool);
    void hasReadSome(QString msg);
    void connectStart(bool);

private slots:
    void readyRead();
    void connected();
    void connectionTimeout();

private:
    QString host;
    int port;
    bool status;
    quint16 nextBlockSize;
    QTimer *timeoutTimer;
};

#endif // CLIENT_H

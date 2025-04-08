#include "backend.h"

Backend::Backend(QObject *parent) : QObject(parent)
{
    client = new Client("localhost", 1102);

    connect(client, &Client::hasReadSome, this, &Backend::receivedSomething);
    connect(client, &Client::statusChanged, this, &Backend::setStatus);
    connect(client, &Client::connectStart, this, &Backend::connectClicked);

    emit client->connectStart(0);
    QJsonObject jobj;
    jobj.insert("Name", "Glove");
    jobj.insert("Status", "Device");
    QJsonDocument doc(jobj);
    emit this->sendClicked(doc.toJson(QJsonDocument::Indented));
    connect(client->tcpSocket, SIGNAL(error(QAbstractSocket::SocketError)),
            this, SLOT(gotError(QAbstractSocket::SocketError)));
}

bool Backend::getStatus()
{
    return client->getStatus();
}

void Backend::setStatus(bool newStatus)
{
    //qDebug() << "new status is:" << newStatus;
    if (newStatus)
        { emit statusChanged("CONNECTED"); }
    else
        { emit statusChanged("DISCONNECTED"); }
}

void Backend::receivedSomething(QString msg)
{
    emit someMessage(msg);
}

void Backend::gotError(QAbstractSocket::SocketError err)
{
    //qDebug() << "got error";
    QString strError = "unknown";
    switch (err)
    {
        case 0:
            strError = "Connection was refused";
            break;
        case 1:
            strError = "Remote host closed the connection";
            break;
        case 2:
            strError = "Host address was not found";
            break;
        case 5:
            strError = "Connection timed out";
            break;
        default:
            strError = "Unknown error";
    }

    emit someError(strError);
}

void Backend::connectClicked()
{
    client->connect2host();
}

void Backend::sendClicked(QString msg)
{
    QByteArray arrBlock;
    QDataStream out(&arrBlock, QIODevice::WriteOnly);
    //out.setVersion(QDataStream::Qt_5_10);
    out << quint16(0) << msg;

    out.device()->seek(0);
    out << quint16(arrBlock.size() - sizeof(quint16));

    qDebug() << msg;

    client->tcpSocket->write(arrBlock);
}

void Backend::disconnectClicked()
{
    client->closeConnection();
}

void Backend::emitation(QString hand)
{
    //emit this->sendClicked("Hello");
    QString str;
    QJsonObject jobj;
    for (int q = 0; q <= 90; q+=5)
    {
        //emit emit""(QString::number(q));
        for (int i= 0; i <=20; i++)
        {
            if (i%4 != 0)
            {
                jobj.insert("joint"+QString::number(i),QString::number(q));
            }
            else
            {
                jobj.insert("joint"+QString::number(i),"0");
            }

        }
        //qDebug() << numbersArray;
        //jobj.insert("Right", numbersArray);*/
        jobj.insert("Hand", "Left");
        QJsonDocument doc(jobj);
        qDebug() << doc.toJson(QJsonDocument::Indented);
        emit this->sendClicked(doc.toJson(QJsonDocument::Indented));
        //QThread::sleep(30);
    }
}

void Backend::sendJoints(QString input1,QString input2,QString input3,QString input4,QString input5,QString input6,QString input7,QString input8,QString input9, QString input10,QString input11, QString input12,QString input13, QString input14, QString input15, QString input16, QString input17, QString input18, QString input19, QString input20, QString hand)
{
    QJsonObject jobj;
    QJsonArray numbersArray;
    jobj.insert("joint0",input1);
    jobj.insert("joint1",input2);
    jobj.insert("joint2",input3);
    jobj.insert("joint3",input4);
    jobj.insert("joint4",input5);
    jobj.insert("joint5",input6);
    jobj.insert("joint6",input7);
    jobj.insert("joint7",input8);
    jobj.insert("joint8",input9);
    jobj.insert("joint9",input10);
    jobj.insert("joint10",input11);
    jobj.insert("joint11",input12);
    jobj.insert("joint12",input13);
    jobj.insert("joint13",input14);
    jobj.insert("joint14",input15);
    jobj.insert("joint15",input16);
    jobj.insert("joint16",input17);
    jobj.insert("joint17",input18);
    jobj.insert("joint18",input19);
    jobj.insert("joint19",input20);
    jobj.insert("Hand", hand);
    QJsonDocument doc(jobj);
    qDebug() << doc.toJson(QJsonDocument::Indented);
    emit this->sendClicked(doc.toJson(QJsonDocument::Indented));
    /*QString st;
    st = input1+input2+input3+input4+input5+input6+input7+input8+input9+input10+input11+input12+input13+input14+input15+input16+input17+input18+input19+input20+hand;
    emit this->sendClicked("Hello");*/
}

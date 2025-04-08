import QtQuick 2.5
import QtQuick.Controls 2.0
import QtQuick.Window 2.0
import io.qt.Backend 1.0

Window {
    id: root
    visible: true
    width: 300
    height: 100
    title: qsTr("Main menu")
    color: "#1d1b1e"

    Backend {
        id: backend
        /*onStatusChanged: {
            //console.log(currentStatus);
            ti.append(addMsg(newStatus));
            if (currentStatus !== true)
            {connect.enabled = true;
            }
                btn_
        }
        onSomeMessage: {
            ti.append(addMsg(msg));
        }
        onSomeError: {
            ti.append(addMsg("Error! " + err));
            if (currentStatus !== true)
            {
                backend.disconnectClicked();
            }
            btn_connect.enabled = true;
        }*/
    }

    Rectangle {
        anchors.fill: parent
        color: "#1d1b1e"

        Rectangle{
            id: rightHand
            x: 20; y:20
            width: root.width-40; height: (root.height-60)/2
            radius: rightHand.height/4
            color: "#e9333d"
            Text {
                id: lable1
                anchors.centerIn: parent
                text: qsTr("Right Hand")
                color: "#f5f5f5"
            }
            MouseArea{
                id: button1
                anchors.fill: parent
                onClicked: {
                    rightWindow.show()
                    root.hide()
                }
            }
        }

        Rectangle{
            id: leftHand
            x: 20; y:40+rightHand.height
            width: root.width-40; height: (root.height-60)/2
            radius: rightHand.height/4
            color: "#e9333d"
            Text {
                id: lable2
                anchors.centerIn: parent
                text: qsTr("Left Hand")
                color: "#f5f5f5"
            }
            MouseArea{
                id: button2
                anchors.fill: parent
                onClicked: {
                    leftWindow.show()
                    root.hide()
                }
            }
        }
    }

    RHand{
        id: rightWindow
        title: qsTr("Right hand")
        visible: false
        onSignalExit: {
            rightWindow.close()
            root.show()
        }
    }

    LHand{
        id: leftWindow
        title: qsTr("Left hand")
        visible: false
        onSignalExit: {
            leftWindow.close()
            root.show()
        }
    }
}

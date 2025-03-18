import QtQuick 2.5
import QtQuick.Controls 1.4

ApplicationWindow {
    id: root
    visible: true
    width: 300
    height: 150
    title: qsTr("Main menu")
    color: "#1d1b1e"

    Rectangle {
        anchors.fill: parent
        color: "#1d1b1e"

        Rectangle{
            id: rightHand
            x: 20; y:20
            width: root.width-40; height: (root.height-80)/3
            radius: rightHand.height/3
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
            width: root.width-40; height: (root.height-80)/3
            radius: rightHand.height/3
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

        Rectangle{
            id: graphic
            x: 20; y:60+rightHand.height+leftHand.height
            width: root.width-40; height: (root.height-80)/3
            radius: rightHand.height/3
            color: "#e9333d"
            Text {
                id: lable3
                anchors.centerIn: parent
                text: qsTr("Graphic")
                color: "#f5f5f5"
            }
            MouseArea{
                id: button3
                anchors.fill: parent
                onClicked: {
                    graphicWindow.show()
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

    Graphic{
        id: graphicWindow
        title: qsTr("Left hand")
        visible: false
        onSignalExit: {
            graphicWindow.close()
            root.show()
        }
    }
}

import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Window 2.2
import QtCharts 2.3

Window {
    id: graphic
    visible: true
    width: 800
    height: 400
    signal signalExit
    color: "#1b1d1e"

    Rectangle{
        id: back
        x: 0; y:0
        width: 60; height: 30
        color: "#1b1d1e"
        Text {
            id: lable
            font.pointSize: 15
            anchors.centerIn: parent
            text: qsTr("< Back")
            color: "#e9333d"
        }
        MouseArea{
            id: button
            anchors.fill: parent
            onClicked: {
                graphic.signalExit()
            }
        }
    }

    Rectangle{
        x:30; y:30
        width: graphic.width/2-45; height: graphic.height-60
        color: "#e9333d"
    }

    Rectangle{
        x:15+graphic.width/2; y:30
        width: graphic.width/2-45; height: graphic.height-60
        color: "#e9333d"
    }
}


import QtQuick 2.5
import QtQuick.Controls 2.0
import QtQuick.Window 2.0
import io.qt.Backend 1.0

Window {
    id: lhand
    visible: true
    signal signalExit
    width: 670
    height: 775
    color: "#1b1d1e"
    maximumHeight: height
    maximumWidth: width
    minimumHeight: height
    minimumWidth: width

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
                lhand.signalExit()
            }
        }
    }
    Item {
        x:0; y:30
        width: lhand.width
        height: lhand.height-30
        Image {
            id: bg
            source: "LeftHand.png"
            opacity: 0.5
        }
    }


    Rectangle{
        id: leftHand
        x: 20; y:lhand.height-50
        width: (lhand.width)/2-30; height: 30
        radius: leftHand.height/3
        color: "#e9333d"
        Text {
            id: lable1
            anchors.centerIn: parent
            text: qsTr("Send")
            color: "#f5f5f5"
        }
        MouseArea{
            id: button1
            anchors.fill: parent
            onClicked: {
                backend.sendJoins(input1.text, input2.text, input3.text, input4.text, input5.text, input6.text, input7.text, input8.text, input9.text, input10.text, input11.text, input12.text, input13.text, input14.text, input15.text, input16.text, input17.text, input18.text, input19.text, input20.text, "Left" );
            }
        }
    }

    Rectangle{
        id: leftHandEmit
        x: (lhand.width)/2 + 10; y:lhand.height-50
        width: (lhand.width)/2-30; height: 30
        radius: leftHand.height/3
        color: "#e9333d"
        Text {
            id: lable2
            anchors.centerIn: parent
            text: qsTr("Emit")
            color: "#f5f5f5"
        }
        MouseArea{
            id: button2
            anchors.fill: parent
            onClicked: {
                backend.emitation();
            }
        }
    }

    Rectangle {
        x: lhand.width-60-80; y: 520
        width: 60; height: 30
        color: "#3e3e3e"
        border.color: "#e9333d"
        radius: 10
        TextInput {
            id: input1
            color: "#f5f5f5"
            text: "0"
            font.pointSize: 15
            anchors.fill: parent
            anchors.margins: 5
        }
    }

    Rectangle {
        x: lhand.width-60-200; y: 200
        width: 60; height: 30
        color: "#3e3e3e"
        border.color: "#e9333d"
        radius: 10
        TextInput {
            id: input2
            color: "#f5f5f5"
            text: "0"
            font.pointSize: 15
            anchors.fill: parent
            anchors.margins: 5
        }
    }

    Rectangle {
        x: lhand.width-60-350; y: 160
        width: 60; height: 30
        color: "#3e3e3e"
        border.color: "#e9333d"
        radius: 10
        TextInput {
            id: input3
            color: "#f5f5f5"
            text: "0"
            font.pointSize: 15
            anchors.fill: parent
            anchors.margins: 5
        }
    }

    Rectangle {
        x: lhand.width-60-470; y: 200
        width: 60; height: 30
        color: "#3e3e3e"
        border.color: "#e9333d"
        radius: 10
        TextInput {
            id: input4
            color: "#f5f5f5"
            text: "0"
            font.pointSize: 15
            anchors.fill: parent
            anchors.margins: 5
        }
    }

    Rectangle {
        x: lhand.width-60-570; y: 300
        width: 60; height: 30
        color: "#3e3e3e"
        border.color: "#e9333d"
        radius: 10
        TextInput {
            id: input5
            color: "#f5f5f5"
            text: "0"
            font.pointSize: 15
            anchors.fill: parent
            anchors.margins: 5
        }
    }

    Rectangle {
        x: lhand.width-60-160; y: 600
        width: 60; height: 30
        color: "#3e3e3e"
        border.color: "#e9333d"
        radius: 10
        TextInput {
            id: input6
            color: "#f5f5f5"
            text: "0"
            font.pointSize: 15
            anchors.fill: parent
            anchors.margins: 5
        }
    }

    Rectangle {
        x: lhand.width-60-220; y: 300
        width: 60; height: 30
        color: "#3e3e3e"
        border.color: "#e9333d"
        radius: 10
        TextInput {
            id: input7
            color: "#f5f5f5"
            text: "0"
            font.pointSize: 15
            anchors.fill: parent
            anchors.margins: 5
        }
    }

    Rectangle {
        x: lhand.width-60-350; y: 270
        width: 60; height: 30
        color: "#3e3e3e"
        border.color: "#e9333d"
        radius: 10
        TextInput {
            id: input8
            color: "#f5f5f5"
            text: "0"
            font.pointSize: 15
            anchors.fill: parent
            anchors.margins: 5
        }
    }

    Rectangle {
        x: lhand.width-60-460; y: 300
        width: 60; height: 30
        color: "#3e3e3e"
        border.color: "#e9333d"
        radius: 10
        TextInput {
            id: input9
            color: "#f5f5f5"
            text: "0"
            font.pointSize: 15
            anchors.fill: parent
            anchors.margins: 5
        }
    }

    Rectangle {
        x: lhand.width-60-540; y: 360
        width: 60; height: 30
        color: "#3e3e3e"
        border.color: "#e9333d"
        radius: 10
        TextInput {
            id: input10
            color: "#f5f5f5"
            text: "0"
            font.pointSize: 15
            anchors.fill: parent
            anchors.margins: 5
        }
    }

    Rectangle {
        x: lhand.width-60-240; y: 650
        width: 60; height: 30
        color: "#3e3e3e"
        border.color: "#e9333d"
        radius: 10
        TextInput {
            id: input11
            color: "#f5f5f5"
            text: "0"
            font.pointSize: 15
            anchors.fill: parent
            anchors.margins: 5
        }
    }

    Rectangle {
        x: lhand.width-60-240; y: 680
        width: 60; height: 30
        color: "#3e3e3e"
        border.color: "#e9333d"
        radius: 10
        TextInput {
            id: input12
            color: "#f5f5f5"
            text: "0"
            font.pointSize: 15
            anchors.fill: parent
            anchors.margins: 5
        }
    }

    Rectangle {
        x: lhand.width-60-260; y: 400
        width: 60; height: 30
        color: "#3e3e3e"
        border.color: "#e9333d"
        radius: 10
        TextInput {
            id: input13
            color: "#f5f5f5"
            text: "0"
            font.pointSize: 15
            anchors.fill: parent
            anchors.margins: 5
        }
    }

    Rectangle {
        x: lhand.width-60-260; y: 430
        width: 60; height: 30
        color: "#3e3e3e"
        border.color: "#e9333d"
        radius: 10
        TextInput {
            id: input14
            color: "#f5f5f5"
            text: "0"
            font.pointSize: 15
            anchors.fill: parent
            anchors.margins: 5
        }
    }

    Rectangle {
        x: lhand.width-60-350; y: 400
        width: 60; height: 30
        color: "#3e3e3e"
        border.color: "#e9333d"
        radius: 10
        TextInput {
            id: input15
            color: "#f5f5f5"
            text: "0"
            font.pointSize: 15
            anchors.fill: parent
            anchors.margins: 5
        }
    }

    Rectangle {
        x: lhand.width-60-350; y: 430
        width: 60; height: 30
        color: "#3e3e3e"
        border.color: "#e9333d"
        radius: 10
        TextInput {
            id: input16
            color: "#f5f5f5"
            text: "0"
            font.pointSize: 15
            anchors.fill: parent
            anchors.margins: 5
        }
    }

    Rectangle {
        x: lhand.width-60-420; y: 420
        width: 60; height: 30
        color: "#3e3e3e"
        border.color: "#e9333d"
        radius: 10
        TextInput {
            id: input17
            color: "#f5f5f5"
            text: "0"
            font.pointSize: 15
            anchors.fill: parent
            anchors.margins: 5
        }
    }

    Rectangle {
        x: lhand.width-60-420; y: 450
        width: 60; height: 30
        color: "#3e3e3e"
        border.color: "#e9333d"
        radius: 10
        TextInput {
            id: input18
            color: "#f5f5f5"
            text: "0"
            font.pointSize: 15
            anchors.fill: parent
            anchors.margins: 5
        }
    }

    Rectangle {
        x: lhand.width-60-500; y: 450
        width: 60; height: 30
        color: "#3e3e3e"
        border.color: "#e9333d"
        radius: 10
        TextInput {
            id: input19
            color: "#f5f5f5"
            text: "0"
            font.pointSize: 15
            anchors.fill: parent
            anchors.margins: 5
        }
    }

    Rectangle {
        x: lhand.width-60-500; y: 480
        width: 60; height: 30
        color: "#3e3e3e"
        border.color: "#e9333d"
        radius: 10
        TextInput {
            id: input20
            color: "#f5f5f5"
            text: "0"
            font.pointSize: 15
            anchors.fill: parent
            anchors.margins: 5
        }
    }
}

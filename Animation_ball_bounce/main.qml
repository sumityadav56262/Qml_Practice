import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    id: root
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    property int duration: 1000

    Rectangle {
        id: sky
        width: parent.width
        height: 350
        gradient: Gradient {
            GradientStop { position: 0.0; color: "#0080FF" }
            GradientStop { position: 1.0; color: "#66CCFF" }
        }
    }
    Rectangle {
        id: ground
        anchors.top: sky.bottom
        anchors.bottom: parent.bottom
        width: parent.width
        gradient: Gradient {
            GradientStop { position: 0.0; color: "#00FF00" }
            GradientStop { position: 1.0; color: "#00803F" }
        }
    }
    Image {
        id: ball
        x: 0; y: root.height - height
        source: "Image/soccer_ball.png"

        MouseArea {
            anchors.fill: parent
            onClicked: {
                ball.x = 0
                ball.y = root.height-ball.height
                ball.rotation = 0
                anim.restart()
            }
        }
    }
    ParallelAnimation{
        id: anim

        SequentialAnimation {
            NumberAnimation {
                target: ball
                properties: "y"
                to: 20
                duration: root.duration * 0.4
                easing.type: Easing.OutCirc
            }
            NumberAnimation {
                target: ball
                properties: "y"
                to: root.height - ground.height/2 - ball.height
                duration: root.duration * 0.6
                easing.type: Easing.OutBounce
            }
        }

        NumberAnimation { // X1 animation
            target: ball
            properties: "x"
            to: root.width - ball.width
            duration: root.duration
        }
        RotationAnimation {
            target: ball
            properties: "rotation"
            to: 720
            duration: root.duration
        }
    }
}

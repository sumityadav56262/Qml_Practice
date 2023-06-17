import QtQuick 2.14
import QtQuick.Window 2.14
import Qt.labs.settings

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("States and transion")

    Rectangle{
        id: containerRectId
        anchors.fill: parent

        Rectangle{
            id: sky
            width: parent.width
            height: 200
            gradient: Gradient{
                GradientStop{id: skyStartColor; position: 0.0; color: "#66CCFF"}
                GradientStop{id: skyEndColor; position: 1.0; color: "lightblue"}
            }
        }

        Rectangle {
            id: ground
            anchors.top: sky.bottom
            anchors.bottom: parent.bottom
            width: parent.width
            color: "lime"
        }

        Image {
            id: treespringId
            x: 50
            y: 100
            width: 200
            height: 300
            source: "images/treespringsmall.png"
        }
        Image {
            id: treesummerId
            x: 50
            y: 100
            width: 200
            height: 300
            source: "images/treesummersmall.png"
        }
        Rectangle{
            id: sun
            x : parent.width - width - 100
            y : 50
            width: 100
            height: 100
            color: "yellow"
            radius: 60
        }

        state: setting.state
        states: [
            State {
                name: "summer"
                PropertyChanges {
                    target: skyStartColor
                    color: "#66CCFF"
                }
                PropertyChanges {
                    target: skyEndColor
                    color: "lightblue"

                }
                PropertyChanges {
                    target: sun
                    color : "yellow"
                }

                PropertyChanges {
                    target: treespringId
                    opacity: 0
                }
                PropertyChanges {
                    target: treesummerId
                    opacity: 1

                }
                PropertyChanges {
                    target: ground
                    color : "darkkhaki"
                }
            },
            State {
                name: "spring"
                PropertyChanges {
                    target: skyStartColor
                    color: "deepskyblue"
                }
                PropertyChanges {
                    target: skyEndColor
                    color: "#AACCFF"

                }
                PropertyChanges {
                    target: sun
                    color : "lightyellow"
                }

                PropertyChanges {
                    target: treespringId
                    opacity: 1
                }
                PropertyChanges {
                    target: treesummerId
                    opacity: 0

                }
                PropertyChanges {
                    target: ground
                    color : "lime"
                }
            }
        ]

//        transitions: [

//            Transition {
//                from: "summer"
//                to: "spring"

//                ColorAnimation {
//                    duration: 500
//                }
//                NumberAnimation{
//                    properties: "opacity"
//                    duration: 500
//                }
//            },
//            Transition {
//                from: "spring"
//                to: "summer"

//                ColorAnimation {
//                    duration: 500
//                }
//                NumberAnimation{
//                    properties: "opacity"
//                    duration: 500
//                }
//            }

//        ]

        transitions: Transition {
            from : "*" ; to: "*"
            ColorAnimation {
                duration: 500
            }
            NumberAnimation{
                properties: "opacity"
                duration: 500
            }
        }

        MouseArea{
            anchors.fill: parent
            onClicked: {
                containerRectId.state === "spring" ? containerRectId.state = "summer":containerRectId.state = "spring"
            }
        }

        Settings{
            id: setting
            property string state: "spring"
        }

        Component.onDestruction: {
            setting.state = containerRectId.state
        }
    }
}

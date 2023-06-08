import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    id: rootId
    width: 640
    height: 480
    visible: true
    title: qsTr("Key_Navigation")

    Grid{
        anchors.centerIn: parent
        columns: 2

        Rectangle{
            id: topLeftRect
            width: 200
            height: 200
            color: focus ? "green" : "grey"
            focus: true

            Text {
                id: firstRectTextId
                anchors.centerIn: parent
                text: qsTr("Activated")
            }

            onFocusChanged: {
                firstRectTextId.text = focus ? "Activated" : "Deactivated"
            }

            KeyNavigation.right: topRightRect
            KeyNavigation.down: downLeftRect
        }

        Rectangle{
            id: topRightRect
            width: 200
            height: 200
            color: focus ? "green" : "grey"

            Text {
                id: secRectTextId
                anchors.centerIn: parent
                text: qsTr(focus ? "Activated" : "Deactivated")
            }

            onFocusChanged: {
                secRectTextId.text = focus ? "Activated" : "Deactivated"
            }

            KeyNavigation.left: topLeftRect
            KeyNavigation.down: downRightRect
        }

        Rectangle{
            id: downLeftRect
            width:200
            height: width
            color: focus ? "green" : "grey"

            Text {
                id: downLeftTextId
                anchors.centerIn: parent
                text: qsTr("Deactivated")
            }

            onFocusChanged: {
                downLeftTextId.text = focus ? "Activated" : "Deactivated"
            }

            KeyNavigation.right: downRightRect
            KeyNavigation.up: topLeftRect
        }

        Rectangle{
            id: downRightRect
            width: 200
            height: 200
            color: focus ? "green" : "grey"

            Text{
                id: downRightText
                anchors.centerIn: parent
                text: "Deactivated"
            }

            onFocusChanged: {
                downRightText.text = focus ? "Activated" : "Deactivated"
            }

            KeyNavigation.left: downLeftRect
            KeyNavigation.up: topRightRect
        }

    }


}

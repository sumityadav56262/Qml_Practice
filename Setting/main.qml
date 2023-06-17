import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Dialogs
import Qt.labs.settings 1.1

Window {
    id: rootId
    width: 640
    height: 480
    visible: true
    title: qsTr("Setting Demo")

    Rectangle{
        id: rectId
        anchors.fill: parent
        color: "black"

        MouseArea{
            anchors.fill: parent
            onClicked: {
                colorId.open()
            }
        }
    }

    ColorDialog {
        id: colorId
        onAccepted: {
            rectId.color = selectedColor
        }
        onRejected: {

        }
    }
    Settings{
        category: "window"
        property alias x: rootId.x
        property alias y: rootId.y
        property alias width: rootId.width
        property alias height: rootId.height
    }
    Settings{
        category: "color"
        property alias color: rectId.color
    }
}

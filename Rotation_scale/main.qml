import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Transforms Demo")

    Rectangle{
        id: containerRectId
        anchors.fill: parent
        color: "light green"
        opacity: 0.5

        MouseArea{
            anchors.fill: parent
            onClicked: {
                rect1Id.x = 50
                rect2Id.rotation = 0
                rect3Id.scale = 1
            }
        }
    }

    ClickableRect{
        id: rect1Id
        width: 100
        height: 100
        color: "light blue"
        transformOrigin: Item.TopRight
        x: 50
        y: 100
        onClicked: {
            x += 20
        }
    }

    ClickableRect{
        id: rect2Id
        width: 100
        height: 100
        color: "orange"
        transformOrigin: Item.TopRight
        x: 250
        y: 100
        onClicked: {
            rotation += 20
        }
    }

    ClickableRect{
        id: rect3Id
        width: 100
        height: 100
        color: "dodgerblue"
        transformOrigin: Item.TopRight
        x: 450
        y: 100
        onClicked: {
            scale += 0.05
        }
    }
}

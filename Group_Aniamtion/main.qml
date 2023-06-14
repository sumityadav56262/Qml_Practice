import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    id: rootId
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle{
        id: containerRectId
        anchors.fill: parent
        color: "grey"

        Rectangle{
            id: circleId
            height: 100
            width: 100
            color: "light blue"
            radius: 70


        }
       // SequentialAnimation{
        ParallelAnimation{
            id: sequentialAnimId
            NumberAnimation{
                target: circleId
                properties: "x"
                to: rootId.width - circleId.width
                from: 0
                duration: 2000
            }

            NumberAnimation{
                easing.type: Easing.OutBounce
                easing.amplitude: 2
                target: circleId
                property: "y"
                to: rootId.height - circleId.height
                from: 0
                duration: 2000
            }
        }
        MouseArea{
            anchors.fill: parent
            onClicked: {
                circleId.x = 0
                circleId.y = 0

                sequentialAnimId.start()
            }
        }
    }
}

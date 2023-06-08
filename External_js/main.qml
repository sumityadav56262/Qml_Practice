import QtQuick 2.14
import QtQuick.Window 2.14
import "External1.js" as External1

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle{
        width: 200
        height: 100
        anchors.centerIn: parent
        color: "grey"

        Text {
            id: rectText
            text: qsTr("Click here")
            anchors.centerIn: parent
        }

        MouseArea{
            anchors.fill: parent
            onClicked: {
                console.log("Addition of 5 and 6 is: " + External1.add(5,6))

                console.log("Subtraction of 4 and 1" + External1.subtraction(4,1))
            }
        }
    }
}

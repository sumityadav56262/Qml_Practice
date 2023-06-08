import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Demo")

    Rectangle{

        anchors.centerIn: parent
        width: 150
        height: 50
        color: "light blue"
        radius: 5

        Text{
            anchors.centerIn: parent
            text:"Button 1"
        }

        MouseArea{
            anchors.fill: parent
            onClicked: {
                console.log("Button 1 clicked")
            }
        }

    }
}

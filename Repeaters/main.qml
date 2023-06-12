import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Flickable{
        contentHeight: columnId.implicitHeight
        anchors.fill: parent

        Row{
            id: columnId
            anchors.fill: parent
            spacing: 2

            Repeater{
                model: ["sumit","sanjay","sushil","Arun"]
                delegate: Rectangle{
                    width: 50
                    height: 50
                    color: "dodgerblue"
                    Text {
                        anchors.centerIn: parent
                        text: modelData
                    }
                    MouseArea{
                        anchors.fill: parent
                        onClicked: {
                            console.log("Clicked on: " + modelData)
                        }
                    }
                }
            }
        }
    }
}

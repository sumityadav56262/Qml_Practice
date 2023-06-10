import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    ListView{
        anchors.fill: parent
        model : ["Sumit Yadav" , "Sanjay Das" , "Sushil Singh"]
        delegate:Rectangle{
            id: rectId
            width: parent.width
            height: 50
            color: "light blue"
            border.color: "black"
            radius: 10

            Text {
                id: textId
                anchors.centerIn: parent
                font.pointSize: 20
                text: modelData
            }

            MouseArea{
                anchors.fill: parent
                onClicked: {
                    console.log( "Clicked on : " + modelData )
                }
            }
        }
    }
}

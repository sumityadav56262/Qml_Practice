import QtQuick 2.14

FocusScope {
    width: containerRect.width
    height: containerRect.height
    property alias color: containerRect.color
    Rectangle{
        id: containerRect
        width: 200
        height: 200
        color: "green"
        anchors.centerIn: parent
        focus: true


        Text {
            id: textId
            text: qsTr("Default")
            anchors.centerIn: parent
        }

        Keys.onPressed: {

            if( event.key === Qt.Key_1 )
                textId.text = "Pressed key 1"
            else if(event.key === Qt.Key_2)
                textId.text = "Pressed key 2"
            else
                textId.text = "pressed key" + event.key

        }
    }


}

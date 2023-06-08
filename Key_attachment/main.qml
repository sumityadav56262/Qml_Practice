import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Key Attachment")

    Rectangle
    {
        id: containedRect
        width: 300
        height: 50
        anchors.centerIn: parent
        focus: true
        color: "dodgerblue"

        Text {
            id: rectText
            text: qsTr("Press Any Key")
            anchors.centerIn: parent

        }
//        Keys.onDigit1Pressed: {
//            console.log("Specific Signal: Pressed on key 1")
//            event.accepted = true
//        }

//        Keys.onDigit5Pressed: {
//            if( event.modifiers === Qt.ControlModifier )
//            {
//                rectText.text = "Ctrl + 5 Pressed. "
//            }
//            else{
//                rectText.text = "Just Regular 5 pressed !! "
//            }
//        }

        Keys.onPressed: {
            if( event.key === Qt.Key_1 )
            {
                console.log("Genral Signal: Pressed on key 1")
            }
            if(( event.key === Qt.Key_4 ) && ( event.modifiers & Qt.ControlModifier ))
            {
                rectText.text = "Pressed Ctrl + 4"
                console.log("Pressed Ctrl + 4")
            }
        }
    }
}

import QtQuick
import QtQuick.Controls 2.14
import QtQuick.Dialogs

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Button{
        text: "button"
        onClicked: {
            fontDialogId.open()
        }

    }
    Text {
        id: textId
        text: qsTr("Hello There")
        anchors.centerIn: parent
        font.family: "Arial"
    }
    FontDialog{
        id: fontDialogId
        title: "choose font"

        onAccepted: {
            textId.font = fontDialogId.selectedFont
            console.log("its clicked ")
        }
    }
}

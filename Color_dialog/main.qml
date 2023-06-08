import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.14
import Qt.labs.platform 1.1

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    MenuItem {
        text: "Color"
        onTriggered: colorDialog.open()
    }

    ColorDialog {
        id: colorDialog
        currentColor: document.color
    }



}

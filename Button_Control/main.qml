import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.14
import QtQuick.Layouts 1.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Button Control")

    RowLayout{
        anchors.left: parent.left
        anchors.right: parent.right
        LayoutMirroring : parent
        Button{
            id : button1
            text: "Button1"
            Layout.fillWidth: true
        }
        Button{
            id: button2
            text: "Button2"
            Layout.fillWidth: true
        }
    }
}

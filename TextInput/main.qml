import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Text Input")

    Rectangle{
        width: 50
        height: 20
        color:"beige"
        Column{
        TextInput
        {
            focus: true;
        }
        TextInput
        {
            focus: true;
        }
        }
    }

}

import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Column{
        Focus_scope{

        }

        Focus_scope{
            focus: true
            color : "yellow"
        }
    }

}

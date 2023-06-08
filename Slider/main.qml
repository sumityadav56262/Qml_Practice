import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Slider{
        width: 200
        from: 1
        to: 100
        value: 25
    }
}

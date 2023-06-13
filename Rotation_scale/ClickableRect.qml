import QtQuick 2.14

Rectangle{
    id : root
    signal clicked
    MouseArea{
        anchors.fill: parent
        onClicked: root.clicked()
    }
}

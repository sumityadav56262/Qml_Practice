import QtQuick 2.14

Rectangle
{
    property alias textAlias: rectText.color
    signal changeColor
    id: rectBlack
    width: rectText.implicitWidth +20
    height: 50
    color: "black"

    function receiver(msg)
    {
        rectText.text = msg
    }

    Text
    {
        anchors.centerIn: parent
        id: rectText
        text: "0 "
        color: "White"

    }

}


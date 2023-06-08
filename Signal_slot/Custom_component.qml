import QtQuick 2.14

Rectangle
{
    property alias textAlias: rectText.color
    signal changeColor
    signal notify(string Msg)
    property int count: 0
    property SecQml target: null

    onTargetChanged:
    {
        notify.connect(target.receiver)
    }

    id: rectBlack
    width: rectText.implicitWidth +20
    height: 50
    color: "black"

    Text
    {
        anchors.centerIn: parent
        id: rectText
        text: count
        color: "White"

    }
    MouseArea{
        anchors.fill: parent
        onClicked: {
            rectBlack.changeColor()
            parent.count += 1
            rectBlack.notify(count)
            parent.x = mouse.x
        }
    }

}


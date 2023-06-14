import QtQuick 2.14

Item {

    property var backgroundColor
    property var startColor
    property var endColor
    property var easingType
    property int animaDuration
    property int containerWidth
    property string easingText

    width:  smallContainerRectId.width
    height: smallContainerRectId.height
    Rectangle {
        id: smallContainerRectId
        width: containerWidth
        height: 50
        color: backgroundColor

        Text{
            text: easingText
            anchors.centerIn: parent
        }

        Rectangle{
            id: containedRectId1
            color: startColor
            width: 50
            height: 50
            border{width: 5; color: "black"}
            radius: 5
            property int finalX: parent.width - width

            MouseArea{
                anchors.fill: parent
                property bool toRight: false
                onClicked: {
                    if(toRight === false)
                    {
                        toRight = true

                        mNumberAnimationId.to = parent.finalX
                        mNumberAnimationId.start()

                        mColorAnimationId.from = startColor
                        mColorAnimationId.to = endColor
                        mColorAnimationId.start()
                    }
                    else{
                        toRight = false

                        mNumberAnimationId.to = 0
                        mNumberAnimationId.start()

                        mColorAnimationId.from = endColor
                        mColorAnimationId.to = startColor
                        mColorAnimationId.start()
                    }
                }
            }
            NumberAnimation{
                id: mNumberAnimationId
                target: containedRectId1
                property: "x"
                easing.type: easingType
                to: parent.finalX
                duration: animaDuration
            }

            ColorAnimation {
                id: mColorAnimationId
                from: startColor
                to: endColor
                target: containedRectId1
                property: "color"
                duration: animaDuration
            }
            Component.onCompleted: {
                console.log("The width of the contained rect is : " + parent.width)
            }
        }
    }
}

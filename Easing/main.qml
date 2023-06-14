import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Layouts 1.14

Window {
    id: rootId
    width: 640
    height: 480
    visible: true
    title: qsTr("Easing Demo")

    property int animationDuration: 500

    Flickable{
        anchors.fill: parent
        contentHeight: mColumnId.implicitHeight

        ColumnLayout{
            id: mColumnId
            width: parent.width
            spacing: 2

            MovinRect{
                backgroundColor: "grey"
                startColor: "beige"
                endColor: "blue"
                animaDuration: animationDuration
                easingText: "Linear"
                easingType: Easing.Linear
                containerWidth: rootId.width
            }

            MovinRect{
                backgroundColor: "grey"
                startColor: "beige"
                endColor: "green"
                animaDuration: animationDuration
                easingText: "InQuad"
                easingType: Easing.InQuad
                containerWidth: rootId.width
            }

            MovinRect{
                backgroundColor: "grey"
                startColor: "beige"
                endColor: "green"
                animaDuration: animationDuration
                easingText: "InElastic"
                easingType: Easing.InElastic
                containerWidth: rootId.width
            }

            MovinRect{
                backgroundColor: "grey"
                startColor: "beige"
                endColor: "green"
                animaDuration: animationDuration
                easingText: "InBounce"
                easingType: Easing.InBounce
                containerWidth: rootId.width
            }

            MovinRect{
                backgroundColor: "grey"
                startColor: "beige"
                endColor: "green"
                animaDuration: animationDuration
                easingText: "InCurve"
                easingType: Easing.InCurve
                containerWidth: rootId.width
            }
        }
    }
}

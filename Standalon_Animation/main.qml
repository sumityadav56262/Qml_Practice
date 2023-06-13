import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Standalone Animation")

    Rectangle{
        id: containerRectId
        anchors.fill: parent
        color: "beige"

        Rectangle{
            id: containedRectId
            width: 100
            height: 100
            color: "dodgerblue"
            x : 50; y: 50

            NumberAnimation{
                id: mXAnimation
                target: containedRectId
                property: "x"
                duration: 2000
                to: 530
            }
            RotationAnimation{
                id: mRotaionAni
                target: containedRectId
                property: "rotation"
                duration: 2000
                to: 530
            }
        }

        MouseArea{
            anchors.fill: parent
            onPressed: {
                mXAnimation.start()
                mRotaionAni.start()
            }
            onReleased: {
                mXAnimation.stop()
                mRotaionAni.stop()
            }
        }
    }


}

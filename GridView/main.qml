import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    ListModel{
        id: mListModel
        ListElement{
            mNumber: 1; mColor: "red"
        }
        ListElement{
            mNumber: 2; mColor: "green"
        }
        ListElement{
            mNumber: 3; mColor: "blue"
        }
        ListElement{
            mNumber: 4; mColor: "pink"
        }
        ListElement{
            mNumber: 5; mColor: "light green"
        }
        ListElement{
            mNumber: 6; mColor: "light blue"
        }
        ListElement{
            mNumber: 7; mColor: "dodgerblue"
        }
        ListElement{
            mNumber: 8; mColor: "yellow"
        }
        ListElement{
            mNumber: 9; mColor: "orange"
        }
    }
    GridView{
        id: mGridViewId
        anchors.fill: parent
        flow: GridView.TopToBottom
        layoutDirection: Qt.RightToLeft
        model: mListModel
        delegate: Rectangle{
            width: 100
            height: width
            color: mColor
            Text {
                id: textId
                text: mNumber
                anchors.centerIn: parent
                font.pointSize: 10
            }
        }
    }
}

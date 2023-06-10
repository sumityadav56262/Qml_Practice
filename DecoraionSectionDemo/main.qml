import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    id : winId
    width: 640
    height: 480
    visible: true
    title: qsTr("Selection Demo")

    ListView{
        anchors.fill: parent
        model: fruitModel
        delegate: delegateId
        section{
            property: "test"
            criteria: ViewSection.FullString
            delegate: Rectangle{
                id : seletionRectId
                width: winId.width
                height: 50
                color: "red"
                border.color: "black"
                radius: 14

                Text {
                    id: sectionTextId
                    text: section
                    anchors.centerIn: parent
                    font.pointSize: 20
                }
            }
        }
    }

    ListModel {
        id: fruitModel

        ListElement {
            name: "Apple"
            test: "sweet"
        }
        ListElement {
            name: "Banana "
            test: "sweet"
        }
        ListElement {
            name: "Orange"
            test: "Acidity"
        }
    }
    Component{
        id : delegateId
        Rectangle{
            id: rectId
            width: winId.width
            height: 50
            color: "light green"
            border.color: "black"

            Text {
                id: textId
                anchors.centerIn: parent
                font.pointSize: 20
                text: name + " is " + test
            }
        }
    }
}

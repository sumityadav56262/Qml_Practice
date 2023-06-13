import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.14
import QtQuick.Layouts 1.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Dynamic Models")

    ListModel{
        id: mListModelId
        ListElement{
            fName:" sanjay"; lName:"Das"
        }
        ListElement{
            fName: " Arun"; lName: " Yadav"
        }
        ListElement{
            fName:" sushil"; lName: "singh"
        }
        ListElement{
            fName: " sumit"; lName: "Yadav"
        }
    }

    ColumnLayout{
        anchors.fill : parent
        ListView{
            id : mListViewId
            model: mListModelId
            delegate: mDelegateId
            Layout.fillWidth: true
            Layout.fillHeight: true
        }
        Button{
            text: "Add"
            Layout.fillWidth: true
            onClicked: {
                mListModelId.append({"fName" : "Hello", "lName" : "World"})
            }
        }
    }

    Component{
        id: mDelegateId
        Rectangle{
            id: rectId
            width: parent.width
            height: 50
            color: "light green"
            border.color: "black"
            radius: 10

            Text {
                id: textId
                text: fName + " " + lName
                font.pointSize: 20
            }

            MouseArea{
                anchors.fill: parent
                onClicked: {
                    console.log(("Clicked on : " + fName + " " + lName))
                }
            }
        }
    }
}

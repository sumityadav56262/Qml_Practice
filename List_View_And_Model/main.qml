import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("List Ciew And List Model")

    ListView{
        id : mListViewId
        anchors.fill: parent
        model: mListModelId
        delegate: delegateId
    }
    ListModel{
        id : mListModelId

        ListElement{
            fName: "sumit" ; lName : "Yadav"
        }
        ListElement{
            fName : "Sanjay" ; lName : "Das"
        }
        ListElement{
            fName : "Sushil" ; lName : "Singh"
        }
    }
    Component{
        id : delegateId
        Rectangle{
            id: rectId
            width: parent.width
            height: 50
            color: "light blue"
            border.color: "black"
            radius: 10

            Text {
                id: textId
                anchors.centerIn: parent
                font.pointSize: 20
                text: fName + " : " +lName
            }

            MouseArea{
                anchors.fill: parent
                onClicked: {
                    console.log( "Clicked on : " + fName + " : " + lName )
                }
            }
        }
    }
}


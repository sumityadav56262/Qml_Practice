import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    id: mainWindow
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    property string textToShow: ""


    Rectangle
    {
        x: 30;y: 30
        width: 200
        height: 200
        visible: true
        color: "light green"
        id: greenRect1
        property bool clicked: false
        Text {
            id: text2
            text: qsTr("Hello dear!!")
        }
        MouseArea{
            anchors.fill: parent
            onClicked :{
                console.log("Green rect is clicked!! ")
                //textToShow = "Clicked On Green "
                if(!parent.clicked){
                text1.text = "Green One is Clicked!!"
                }
                else
                {
                    text1.text = "Already Clicked!!"
                }
                parent.clicked = true
            }
        }

    }
    Rectangle
    {
        x: 260;y: 30
        width: 200
        height: 200
        visible: true
        color: "light blue"
        radius: 30

        Text {
            id: text1
            anchors.centerIn: parent
            text: textToShow
        }

        MouseArea{
            anchors.fill: parent
            hoverEnabled: true
            onClicked: {
               greenRect1.width = greenRect1.width+10;

                Qt.openUrlExternally("file:///C:/Users/Lalu/OneDrive/Desktop/pics/p6.jpg")
            }
            onEntered:
            {
                parent.color = "pink"
            }
            onExited:
            {
                parent.color = "light blue"
            }
        }
    }
}

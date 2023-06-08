import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")


    Column{

        spacing: 10
        Custom_component{
            id:firstRect
            textAlias: "red"
            onChangeColor: {
                textAlias= "green"
            }
            target: secRect

        }

        SecQml{
            id: secRect
            color: "red"
        }
    }

}

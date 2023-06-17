import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Down;loading Http Data")

    function downLoadData(url , callback){
        var xhr = new XMLHttpRequest();

        xhr.onreadystatechange = function(){
            if( xhr.readyState === XMLHttpRequest.HEADERS_RECEIVED ){
                console.log("HEADERS RECEIVED")
            }
            else if(xhr.readyState === XMLHttpRequest.DONE){
                if( xhr.status == 200 ){
                    console.log("Got the data ")
                    callback(xhr.responseText.toString())
                }else{
                    console.log("Something went Wrong")
                    callback(null)
                }
            }
        }

        xhr.open("GET",url)
        xhr.send()
    }

    TextArea{
        id: textAreaId
        anchors.fill: parent
        textFormat: TextArea.RichText
        text: "Html Data here"
    }

    MouseArea{
        anchors.fill: parent
        onClicked: {

            downLoadData("https://api.chucknorris.io/",function(response) {
                if(response)
                {
                    textAreaId.text = response
                }
                else{
                    textAreaId.text = "some error"
                }
            })

        }
    }
}

import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.14

Window {
    id : rootId
    width: 250
    height: 480
    visible: true
    title: qsTr("Hello World")
    color: "light blue"

    property int year :0
    property int month :0
    property int day :0

    property int tempyear :0
    property int tempmonth :0
    property int tempday :0

    property string tempmonthstr
    property string tempdaystr

    Row {
        id : rectId
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 50

        Column{
            id : preColId
            Label{
                id : labelYear
                text: "Previous Date: "

            }

            TextField{
                id : textYeardId
                width: 80
                focus: true
                placeholderText: "YY"
                onTextEdited: {
                    rootId.tempmonthstr = textYeardId.text
                    if( Number(textYeardId.text) > 4000 || rootId.tempmonthstr.length > 4 )
                    {
                        textYeardId.text = "2023"
                    }
                }
            }
        }
        TextField{
            id : textMonthId
            anchors.bottom: preColId.bottom
            focus: true
            width: 50
            placeholderText : "MM"
            onTextEdited: {
                if( Number(textMonthId.text) > 12 || Number(textMonthId.text) < 0 )
                {
                    textMonthId.text = "12"
                }
            }
        }

        TextField{
            id : textDayId
            anchors.bottom: preColId.bottom
            focus: true
            width: 50
            placeholderText : "DD"
            onTextEdited: {
                if( Number(textDayId.text) > 31 || Number(textDayId.text) < 0 )
                {
                    textDayId.text = "31"
                }
            }
        }

    }
    Row {

        id : returnrectId
        anchors.top: rectId.bottom
        anchors.left: rectId.left

        Column{
            id : currColumn
            Label{
                id : returnlabelYear
                text: "Current Date: "
            }

            TextField{
                id : returntextYeardId
                width: 80
                focus: true
                placeholderText: "YY"
                PlaceholderText{

                }

                onTextEdited: {
                    rootId.tempmonthstr = returntextYeardId.text
                    if( Number(returntextYeardId.text) > 4000 || rootId.tempmonthstr.length > 4 )
                    {
                        returntextYeardId.text = "2023"
                    }
                }
                onFocusChanged: {
                    rootId.tempmonthstr = returntextYeardId.text
                    if( rootId.tempmonthstr.length < 4 )
                    {
                        returntextYeardId.text = "2023"
                    }
                }
            }
        }


        TextField{
            id : returntextMonthId
            anchors.bottom: currColumn.bottom
            focus: true
            width: 50
            placeholderText: "MM"
            onTextEdited: {
                if( Number(returntextMonthId.text) > 12 || Number(returntextMonthId.text) < 0 )
                {
                    returntextMonthId.text = "12"
                }
            }
        }


        TextField{
            id : returntextDayId
            anchors.bottom: currColumn.bottom
            focus: true
            width: 50
            placeholderText : "DD"
            onTextEdited: {
                if( Number(returntextDayId.text) > 31 || Number(returntextDayId.text) < 0 )
                {
                    returntextDayId.text = "31"
                }
            }
        }

    }

    Button{
        text:"Button1"
        anchors.top: returnrectId.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 5
        onClicked: {
            rootId.year = Number( returntextYeardId.text )
            rootId.month = Number( returntextMonthId.text )
            rootId.day = Number( returntextDayId.text )

            rootId.tempyear = Number( textYeardId.text )
            rootId.tempmonth = Number( textMonthId.text )
            rootId.tempday = Number( textDayId.text )

            if( rootId.day >= rootId.tempday )
                rootId.day -= rootId.tempday
            else{
                rootId.month -= 1
                rootId.day =  rootId.day + 30 - rootId.tempday
            }

            if( rootId.month >= rootId.tempmonth )
                rootId.month -= rootId.tempmonth
            else{
                rootId.year -= 1
                rootId.month =  rootId.month + 12 - rootId.tempmonth
            }

            if( rootId.year >= rootId.tempyear )
                rootId.year -= rootId.tempyear
            else{
                rectText.text = "Invalid Input"
            }

            rootId.tempmonthstr = ( (month!=0)? rootId.month + " Months ":"" )
            rootId.tempdaystr = ( (day!=0)? rootId.day + " Days ":"" )

            rectText.text = rootId.year + " Years " + rootId.tempmonthstr + rootId.tempdaystr

        }
    }
    Text {
        id: rectText
        text: qsTr("Date")
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottomMargin: 100
    }
}

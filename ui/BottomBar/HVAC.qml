import QtQuick 2.15


Rectangle {

    property  var hvacController

    visible: true
    color: "transparent"

    Image {
        id: decTemperatureIcon
        source: "qrc:/ui/asset/icon_dec_triangle.png"

        anchors {
            top: parent.top
            bottom: parent.bottom
            left: parent.left
        }

        fillMode: Image.PreserveAspectFit

        MouseArea {
            anchors.fill: parent
            onClicked: {
                console.log("decrease clicked")
                hvacController.change(-1)
                console.log(hvacController.temperature)
            }
        }
    }

    Text {
        id: temperatureText
        visible: true

        anchors {
            top: parent.top
            bottom: parent.bottom
            left: decTemperatureIcon.right
            right: incTemperatureIcon.left
        }

        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter

        font {
            pixelSize: 14
            bold: true
        }

        text: hvacController.temperature
    }

    Image {
        id: incTemperatureIcon
        source: "qrc:/ui/asset/icon_inc_triangle.png"

        anchors {
            top: parent.top
            bottom: parent.bottom
            right: parent.right
        }

        fillMode: Image.PreserveAspectFit

        MouseArea {
            anchors.fill: parent
            onClicked: {
                console.log("increase clicked")
                hvacController.change(+1)
                console.log(hvacController.temperature)
            }
        }
    }
}

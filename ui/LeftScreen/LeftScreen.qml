import QtQuick 2.15

Rectangle {
    anchors {
        left: parent.left
        top: parent.top
        bottom: parent.bottom
    }

    width: parent.width * (1 / 3)
    color: "#ffffff"
    visible: true

    Image {
        id: carImage
        source: "qrc:/ui/asset/YellowCar.png"
        visible: true

        fillMode: Image.PreserveAspectFit
        anchors {
            verticalCenter: parent.verticalCenter
            horizontalCenter: parent.horizontalCenter

            left: parent.left
            leftMargin: 30
        }
    }
}

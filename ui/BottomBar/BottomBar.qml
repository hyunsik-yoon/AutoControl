import QtQuick 2.15

Rectangle {
    anchors {
        left: parent.left
        right: parent.right
        bottom: parent.bottom
    }

    property int icon_size : 32
    property int vertical_margin : 8

    height: icon_size + vertical_margin + vertical_margin
    color: "orange"
    visible: true

    Image {
        id: settingIcon

        anchors {
            top: parent.top
            topMargin: vertical_margin

            bottom: parent.bottom
            bottomMargin: vertical_margin

            left: parent.left
            leftMargin: 16
        }
        fillMode: Image.PreserveAspectFit

        source: "qrc:/ui/asset/icon_setting.png"
    }

    HVAC {
        id: driverHVAC

        anchors {
            top: parent.top
            topMargin: vertical_margin

            bottom: parent.bottom
            bottomMargin: vertical_margin

            left: settingIcon.right
            leftMargin: 32
        }
        width: 160
    }

    HVAC {
        id: passengerHVAC

        anchors {
            top: parent.top
            topMargin: vertical_margin

            bottom: parent.bottom
            bottomMargin: vertical_margin

            right: parent.right
            rightMargin: 32
        }
        width: 200
    }

    Component.onCompleted: {
        driverHVAC.hvacController = driverHVACController
        passengerHVAC.hvacController = passengerHVACController
    }

}

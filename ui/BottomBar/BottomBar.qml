import QtQuick 2.15

Rectangle {
    anchors {
        left: parent.left
        right: parent.right
        bottom: parent.bottom
    }

    height: 32+8+8
    color: "orange"
    visible: true

    Image {
        id: settingIcon

        anchors {
            top: parent.top
            topMargin: 8

            bottom: parent.bottom
            bottomMargin: 8

            left: parent.left
            leftMargin: 16
        }
        fillMode: Image.PreserveAspectFit

        source: "qrc:/ui/asset/icon_setting.png"
    }
}

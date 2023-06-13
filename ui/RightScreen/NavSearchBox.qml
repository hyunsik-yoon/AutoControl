import QtQuick 2.15

Rectangle {
    color: "#ededed"

    height: 30
    width: parent.width * (1/3)

    Image {
        id: searchIcon
        source: "qrc:/ui/asset/icon_search.png"

        anchors {
            left: parent.left
            verticalCenter: parent.verticalCenter
        }

        fillMode: Image.PreserveAspectFit
    }

    Text {
        id: navDefaultText

        anchors {
            left: searchIcon.right
            leftMargin: 8
            verticalCenter: parent.verticalCenter
        }
        visible: (navDestInput.text === "")

        text: qsTr("Enter the name")
    }

    TextInput {
        id: navDestInput

        anchors {
            left: searchIcon.right
            leftMargin: 8

            right: parent.right
            rightMargin: 8

            top: parent.top
            bottom: parent.bottom
        }
        width: parent.width - searchIcon.width
        clip: true

        verticalAlignment: TextInput.AlignVCenter
    }
}

import QtQuick 2.15
import QtLocation 5.15
import QtPositioning 5.15

Rectangle {
    anchors {
        right: parent.right
        top: parent.top
        bottom: parent.bottom
    }

    width: parent.width * (2 / 3)
    color: "blue"
    visible: true

    Plugin {
        id: mapPlugin
        name: "osm"
    }

    Map {
        id: map
        plugin: mapPlugin
        zoomLevel: 14
        center {
            // Irvine
            latitude: 33.6592
            longitude: -117.7603
        }

        anchors.fill: parent
    }

    Image {
        id: lockIcon
        source: ( systemHandler.locked ? "qrc:/ui/asset/icon_lock.png" : "qrc:/ui/asset/icon_unlock.png" )

        anchors {
            top: parent.top
            left: parent.left

            topMargin: 8
            leftMargin: 16
        }

        height : 16

        fillMode: Image.PreserveAspectFit

        MouseArea {
            anchors.fill: parent
            onClicked: {
                systemHandler.setLocked( !systemHandler.locked )
            }
        }
    }

    Text {
        id: timeText
        anchors {
            top: parent.top
            left: lockIcon.right
            leftMargin: 16

            topMargin: 8
        }

        font {
            pixelSize: 14
            bold: true
        }
        color: "black"

        text: qsTr(systemHandler.currentTime)
    }

    Text {
        id: temperatoreText
        anchors {
            top: parent.top
            left: timeText.right
            leftMargin: 16

            topMargin: 8
        }

        font {
            pixelSize: 14
            bold: true
        }
        color: "black"

        text: qsTr(systemHandler.outTemp + "°F")
    }

    Image {
        id: userIcon
        source: "qrc:/ui/asset/icon_user.png"

        anchors {
            top: parent.top
            left: temperatoreText.left

            topMargin: 8
            leftMargin: 16*8
        }

        height : 16

        fillMode: Image.PreserveAspectFit
    }

    Text {
        id: userName
        anchors {
            top: parent.top
            left: userIcon.right
            leftMargin: 8

            topMargin: 8
        }

        font {
            pixelSize: 14
            bold: true
        }
        color: "black"

        text: qsTr(systemHandler.userName)
    }
}

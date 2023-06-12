import QtQuick 2.15
import QtQuick.Window 2.15

import "ui/LeftScreen"
import "ui/RightScreen"
import "ui/BottomBar"

Window {
    id: mainWindow
    width: 1024
    height: 768
    visible: true

    title: qsTr("Car Control Display")

    LeftScreen {
        id: leftScreen
    }

    RightScreen {
        id: rightScreen
    }

    BottomBar {
        id: bottomBar
    }
}

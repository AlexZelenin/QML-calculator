
import QtQuick 2.10
import QtQuick.Window 2.10
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.10

import "utils.js" as Utils

Window {
    id: root

    visible: true
    width: _base.getW()
    height: _base.getH()
    x: _base.getX()
    y: _base.getY()

    title: "Stm test"
    opacity: 1

    minimumHeight: 450
    minimumWidth: 350

    property int count_q: 0
    property string btn_text: ""
    property string result: ""
    property string request: ""
    property string str_error: ""
    property string clrlog: ""
    property string arg1: ""
    property string arg2: ""
    property string typeWorkS: ""
    property int typeWork: 0
    property int time: 0
    property int error: 0

    Connections {
        target: _base
        onSigCountQueue: count_q = count
        onSigResult: Utils.resultLog(Utils.checkStr(value))
    }

    onXChanged: _base.saveXPos(x)
    onYChanged: _base.saveYPos(y)
    onWidthChanged: _base.saveWidth(width)
    onHeightChanged: _base.saveHeight(height)

    Rectangle {
        id: rt_rct

        color: "black"
        clip: true
        border.color: "#a8a9a9"
        border.width: 2
        anchors.fill: parent

        ColumnLayout {
            id: root_grid
            clip: true
            anchors.fill: parent

            Dspls {
                id: root_displays
                clip: true
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.row: 1
            }

            Btns {
                id: root_btns
                clip: true
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.row: 2
            }
        }
    }
}
















/*##^## Designer {
    D{i:4;anchors_height:225;anchors_width:350}D{i:5;anchors_height:223;anchors_width:350}
D{i:3;anchors_height:450;anchors_width:350}
}
 ##^##*/

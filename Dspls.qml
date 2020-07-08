import QtQuick 2.0
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.12

import "utils.js" as Utils

Item {
    id: _item
    clip: true

    ColumnLayout {
        id: columnLayout
        clip: true
        spacing: 2

        anchors.margins: 8
        anchors.fill: parent

        ScrollView {
            id: _flck
            clip: true

            Layout.preferredHeight: 30
            Layout.preferredWidth: 0
            Layout.fillHeight: true
            Layout.fillWidth: true

            ScrollBar.vertical: ScrollBar {
                id: _scroll
                parent: _flck
                anchors.top: _flck.top
                anchors.right: _flck.right
                anchors.bottom: _flck.bottom

            }

            Label {
                id: _out_log
                text: root.clrlog
                clip: true
                anchors.fill: parent

                verticalAlignment: Text.AlignTop
            }

//            onContentHeightChanged: {
//                _scroll.setPosition(0)
//            }
        }

        Label {
            id: _out_entrs
            clip: true

            Layout.preferredWidth: 0
            Layout.preferredHeight: 10
            Layout.fillHeight: true
            Layout.fillWidth: true

            Text {
                id: _enters_text
                color: "white"
                clip: true
                font.pixelSize: 24
                text: qsTr(root.btn_text)
                verticalAlignment: Text.AlignVCenter
                elide: Text.ElideMiddle
                wrapMode: Text.WordWrap
                anchors.leftMargin: 8
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                anchors.right: _type_work.left
            }

            Text {
                id: _type_work

                font.pixelSize: 24
                color: "white"
                text: qsTr(root.typeWorkS)
                verticalAlignment: Text.AlignVCenter
                elide: Text.ElideRight
                clip: true
                anchors.rightMargin: 8
                anchors.verticalCenter: parent.verticalCenter
                width: 50
                anchors.right: parent.right
            }


        }

        Rectangle {
            id: _edit_time
            width: 200
            height: 200
            radius: 4
            clip: true

            Layout.preferredWidth: 0
            Layout.preferredHeight: 15
            Layout.fillHeight: true
            Layout.fillWidth: true

            gradient: Gradient {
                GradientStop {position: 0.1; color: "#524E45"  }
                GradientStop {position: 1.0; color: "white" }
            }

            Label {
                id: queue_count
                clip: true
                verticalAlignment: Text.AlignVCenter
                anchors.left: parent.left
                anchors.leftMargin: 8
                anchors.verticalCenter: parent.verticalCenter
                anchors.right: spin_seconds.left
                anchors.rightMargin: 8

                font.pointSize: 20

                Text {
                    id: queue_text
                    anchors.fill: parent
                    anchors.verticalCenter: parent.verticalCenter
                    text: "В очереди: " + root.count_q
                    clip: true
                    verticalAlignment: Text.AlignVCenter

                }
            }

            SpinBox {
                id: spin_seconds
                width: 150
                height: 33
                clip: true
                font.pointSize: 14
                anchors.verticalCenter: parent.verticalCenter
                anchors.right: parent.right
                anchors.rightMargin: 8

                anchors.margins: 2
                wheelEnabled: true
                onValueChanged:  {
                    Utils.setTime(value)
                }
            }
        }
    }
}


/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:5;anchors_height:400;anchors_width:400}
D{i:3;anchors_height:251;anchors_width:624}D{i:7;anchors_height:400;anchors_width:400}
D{i:8;anchors_height:400;anchors_width:400}D{i:6;anchors_height:400;anchors_width:400}
D{i:14;anchors_height:400;anchors_width:400}D{i:13;anchors_height:400;anchors_width:400}
D{i:11;anchors_height:400;anchors_width:400}D{i:12;anchors_height:400;anchors_width:400}
D{i:10;anchors_height:400;anchors_width:400}D{i:9;anchors_height:400;anchors_width:400}
D{i:1;anchors_height:100;anchors_width:100}
}
 ##^##*/

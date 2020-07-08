import QtQuick 2.0
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.10

import "utils.js" as Utils

Item {
    id: _item

    GridLayout {
        id: r_grid

        anchors.fill: parent
        anchors.margins: 8

        rows: 4
        columns: 5

        Button {
            id: btn_1


            height: 35
            width: r_grid.width / 4

            Layout.fillHeight: true
            Layout.fillWidth: true

            Layout.row: 1
            Layout.column: 1

            Text {
                id: t1
                text: "1"
                //color: "#0067c5"
                color: "black"
                font.bold: true

                anchors.centerIn: parent
            }

            background: Rectangle {
                width: btn_1.width
                height: btn_1.height

                gradient: Gradient {
                    GradientStop {position: 1.0; color: btn_1.down ? "#524E45" : "white" }
                    GradientStop {position: 0.1; color: btn_1.down ? "white" : "#524E45" }
                }

                radius: 4
            }

            onClicked: {
                Utils.setText(t1.text)
            }

        }

        Button {
            id: btn_2

            height: 35
            width: r_grid.width / 4

            Layout.fillHeight: true
            Layout.fillWidth: true

            Layout.row: 1
            Layout.column: 2

            Text {
                id: t2
                text: "2"
                //color: "#0067c5"
                color: "black"
                font.bold: true

                anchors.centerIn: parent
            }

            background: Rectangle {
                width: btn_2.width
                height: btn_2.height

                gradient: Gradient {
                    GradientStop {position: 1.0; color: btn_2.down ? "#524E45" : "white" }
                    GradientStop {position: 0.1; color: btn_2.down ? "white" : "#524E45" }
                }

                radius: 4
            }

            onClicked: {
                Utils.setText(t2.text)
            }
        }

        Button {
            id: btn_3

            height: 35
            width: r_grid.width / 4

            Layout.fillHeight: true
            Layout.fillWidth: true

            Layout.row: 1
            Layout.column: 3

            Text {
                id: t3
                text: "3"
                //color: "#0067c5"
                color: "black"
                font.bold: true

                anchors.centerIn: parent
            }

            background: Rectangle {
                width: btn_3.width
                height: btn_3.height

                gradient: Gradient {
                    GradientStop {position: 1.0; color: btn_3.down ? "#524E45" : "white" }
                    GradientStop {position: 0.1; color: btn_3.down ? "white" : "#524E45" }
                }

                radius: 4
            }

            onClicked: {
                Utils.setText(t3.text)
            }
        }

        Button {
            id: btn_division

            height: 35
            width: r_grid.width / 4

            Layout.fillHeight: true
            Layout.fillWidth: true

            Layout.row: 1
            Layout.column: 4

            Text {
                id: t_div
                text: "÷"
                //color: "#0067c5"
                color: "black"
                font.bold: true
                font.pixelSize: 24
                anchors.centerIn: parent
            }

            background: Rectangle {
                width: btn_division.width
                height: btn_division.height

                gradient: Gradient {
                    GradientStop {position: 1.0; color: btn_division.down ? "#524E45" : "white" }
                    GradientStop {position: 0.1; color: btn_division.down ? "white" : "#524E45" }
                }

                radius: 4
            }
            onClicked: {
                if (root.btn_text != "") {
                    Utils.setArg1(root.btn_text)
                    Utils.setTypeW(4)
                    root.typeWorkS = t_div.text
                    Utils.clearText()
                } else {
                    Utils.errorLog("Введите первое значение")
                }
            }
        }

        Button {
            id: btn_4

            height: 35
            width: r_grid.width / 4

            Layout.fillHeight: true
            Layout.fillWidth: true

            Layout.row: 2
            Layout.column: 1

            Text {
                id: t_4
                text: "4"
                //color: "#0067c5"
                color: "black"
                font.bold: true

                anchors.centerIn: parent
            }

            background: Rectangle {
                width: btn_4.width
                height: btn_4.height

                gradient: Gradient {
                    GradientStop {position: 1.0; color: btn_4.down ? "#524E45" : "white" }
                    GradientStop {position: 0.1; color: btn_4.down ? "white" : "#524E45" }
                }

                radius: 4
            }
            onClicked: {
                Utils.setText(t_4.text)
            }
        }

        Button {
            id: btn_5

            height: 35
            width: r_grid.width / 4

            Layout.fillHeight: true
            Layout.fillWidth: true

            Layout.row: 2
            Layout.column: 2

            Text {
                id: t_5
                text: "5"
                //color: "#0067c5"
                color: "black"
                font.bold: true

                anchors.centerIn: parent
            }

            background: Rectangle {
                width: btn_5.width
                height: btn_5.height

                gradient: Gradient {
                    GradientStop {position: 1.0; color: btn_5.down ? "#524E45" : "white" }
                    GradientStop {position: 0.1; color: btn_5.down ? "white" : "#524E45" }
                }

                radius: 4
            }
            onClicked: {
                Utils.setText(t_5.text)
            }
        }

        Button {
            id: btn_6

            height: 35
            width: r_grid.width / 4

            Layout.fillHeight: true
            Layout.fillWidth: true

            Layout.row: 2
            Layout.column: 3

            Text {
                id: t_6
                text: "6"
                //color: "#0067c5"
                color: "black"
                font.bold: true

                anchors.centerIn: parent
            }

            background: Rectangle {
                width: btn_6.width
                height: btn_6.height

                gradient: Gradient {
                    GradientStop {position: 1.0; color: btn_6.down ? "#524E45" : "white" }
                    GradientStop {position: 0.1; color: btn_6.down ? "white" : "#524E45" }
                }

                radius: 4
            }
            onClicked: {
                Utils.setText(t_6.text)
            }
        }

        Button {
            id: btn_multiplicat

            height: 35
            width: r_grid.width / 4

            Layout.fillHeight: true
            Layout.fillWidth: true

            Layout.row: 2
            Layout.column: 4

            Text {
                id: t_mult
                text: "*"
                //color: "#0067c5"
                color: "black"
                font.bold: true

                anchors.centerIn: parent
            }

            background: Rectangle {
                width: btn_multiplicat.width
                height: btn_multiplicat.height

                gradient: Gradient {
                    GradientStop {position: 1.0; color: btn_multiplicat.down ? "#524E45" : "white" }
                    GradientStop {position: 0.1; color: btn_multiplicat.down ? "white" : "#524E45" }
                }

                radius: 4
            }
            onClicked: {
                if (root.btn_text != "") {
                    Utils.setArg1(root.btn_text)
                    Utils.setTypeW(3)
                    root.typeWorkS = t_mult.text
                    Utils.clearText()
                } else {
                    Utils.errorLog("Введите первое значение")
                }
            }
        }

        Button {
            id: btn_7

            height: 35
            width: r_grid.width / 4

            Layout.fillHeight: true
            Layout.fillWidth: true

            Layout.row: 3
            Layout.column: 1

            Text {
                id: t_7
                text: "7"
                //color: "#0067c5"
                color: "black"
                font.bold: true

                anchors.centerIn: parent
            }

            background: Rectangle {
                width: btn_7.width
                height: btn_7.height

                gradient: Gradient {
                    GradientStop {position: 1.0; color: btn_7.down ? "#524E45" : "white" }
                    GradientStop {position: 0.1; color: btn_7.down ? "white" : "#524E45" }
                }

                radius: 4
            }
            onClicked: {
                Utils.setText(t_7.text)
            }
        }

        Button {
            id: btn_8

            height: 35
            width: r_grid.width / 4

            Layout.fillHeight: true
            Layout.fillWidth: true

            Layout.row: 3
            Layout.column: 2

            Text {
                id: t_8
                text: "8"
                //color: "#0067c5"
                color: "black"
                font.bold: true

                anchors.centerIn: parent
            }

            background: Rectangle {
                width: btn_8.width
                height: btn_8.height

                gradient: Gradient {
                    GradientStop {position: 1.0; color: btn_8.down ? "#524E45" : "white" }
                    GradientStop {position: 0.1; color: btn_8.down ? "white" : "#524E45" }
                }

                radius: 4
            }
            onClicked: {
                Utils.setText(t_8.text)
            }
        }

        Button {
            id: btn_9

            height: 35
            width: r_grid.width / 4

            Layout.fillHeight: true
            Layout.fillWidth: true

            Layout.row: 3
            Layout.column: 3

            Text {
                id: t_9
                text: "9"
                //color: "#0067c5"
                color: "black"
                font.bold: true

                anchors.centerIn: parent
            }

            background: Rectangle {
                width: btn_9.width
                height: btn_9.height

                gradient: Gradient {
                    GradientStop {position: 1.0; color: btn_9.down ? "#524E45" : "white" }
                    GradientStop {position: 0.1; color: btn_9.down ? "white" : "#524E45" }
                }

                radius: 4
            }
            onClicked: {
                Utils.setText(t_9.text)
            }
        }

        Button {
            id: btn_subtraction

            height: 35
            width: r_grid.width / 4

            Layout.fillHeight: true
            Layout.fillWidth: true

            Layout.row: 3
            Layout.column: 4

            Text {
                id: t_sub
                text: "-"
                //color: "#0067c5"
                color: "black"
                font.bold: true

                anchors.centerIn: parent
            }

            background: Rectangle {
                width: btn_subtraction.width
                height: btn_subtraction.height

                gradient: Gradient {
                    GradientStop {position: 1.0; color: btn_subtraction.down ? "#524E45" : "white" }
                    GradientStop {position: 0.1; color: btn_subtraction.down ? "white" : "#524E45" }
                }

                radius: 4
            }
            onClicked: {
                if (root.btn_text != "") {
                    Utils.setArg1(root.btn_text)
                    Utils.setTypeW(2)
                    root.typeWorkS = t_sub.text
                    Utils.clearText()
                } else {
                    Utils.errorLog("Введите первое значение")
                }
            }
        }

        Button {
            id: btn_0

            height: 35
            width: r_grid.width / 4

            Layout.fillHeight: true
            Layout.fillWidth: true

            Layout.row: 4
            Layout.column: 1

            Text {
                id: t_0
                text: "0"
                //color: "#0067c5"
                color: "black"
                font.bold: true

                anchors.centerIn: parent
            }

            background: Rectangle {
                width: btn_0.width
                height: btn_0.height

                gradient: Gradient {
                    GradientStop {position: 1.0; color: btn_0.down ? "#524E45" : "white" }
                    GradientStop {position: 0.1; color: btn_0.down ? "white" : "#524E45" }
                }

                radius: 4
            }
            onClicked: {
                Utils.setText(t_0.text)
            }
        }

        Button {
            id: btn_dot

            height: 35
            width: r_grid.width / 4

            Layout.fillHeight: true
            Layout.fillWidth: true

            Layout.row: 4
            Layout.column: 2

            Text {
                id: t_dot
                text: "."
                //color: "#0067c5"
                color: "black"
                font.bold: true

                anchors.centerIn: parent
            }

            background: Rectangle {
                width: btn_dot.width
                height: btn_dot.height

                gradient: Gradient {
                    GradientStop {position: 1.0; color: btn_dot.down ? "#524E45" : "white" }
                    GradientStop {position: 0.1; color: btn_dot.down ? "white" : "#524E45" }
                }

                radius: 4
            }
            onClicked: {
                Utils.setText(t_dot.text)
            }
        }

        Button {
            id: btn_result

            height: 35
            width: r_grid.width / 4

            Layout.fillHeight: true
            Layout.fillWidth: true

            Layout.row: 4
            Layout.column: 3

            Text {
                id: t_result
                text: "="
                //color: "#0067c5"
                color: "black"
                font.bold: true

                anchors.centerIn: parent
            }

            background: Rectangle {
                width: btn_result.width
                height: btn_result.height

                gradient: Gradient {
                    GradientStop {position: 1.0; color: btn_result.down ? "#524E45" : "green" }
                    GradientStop {position: 0.1; color: btn_result.down ? "green" : "#524E45" }
                }

                radius: 4
            }
            onClicked: {
                Utils.setArg2(root.btn_text)
                Utils.requestLog(root.arg1, root.arg2, root.typeWorkS)
                Utils.clearText()
                root.typeWorkS = ""
                _request.setArgs(root.typeWork, root.arg1, root.arg2, root.time)

            }
        }

        Button {
            id: btn_addition

            height: 35
            width: r_grid.width / 4

            Layout.fillHeight: true
            Layout.fillWidth: true

            Layout.row: 4
            Layout.column: 4

            Text {
                id: t_add
                text: "+"
                //color: "#0067c5"
                color: "black"
                font.bold: true

                anchors.centerIn: parent
            }

            background: Rectangle {
                width: btn_addition.width
                height: btn_addition.height

                gradient: Gradient {
                    GradientStop {position: 1.0; color: btn_addition.down ? "#524E45" : "white" }
                    GradientStop {position: 0.1; color: btn_addition.down ? "white" : "#524E45" }
                }

                radius: 4
            }
            onClicked: {
                if (root.btn_text != "") {
                    Utils.setArg1(root.btn_text)
                    Utils.setTypeW(1)
                    root.typeWorkS = t_add.text
                    Utils.clearText()

                } else {
                    Utils.errorLog("Введите первое значение")
                }
            }
        }

        Button {
            id: btn_backs

            height: 35
            width: r_grid.width / 4

            Layout.fillHeight: true
            Layout.fillWidth: true

            Layout.row: 1
            Layout.column: 5

            Text {
                id: t_back
                text: "←"
                //color: "#0067c5"
                color: "black"
                font.bold: true

                anchors.centerIn: parent
            }

            background: Rectangle {
                width: btn_backs.width
                height: btn_backs.height

                gradient: Gradient {
                    GradientStop {position: 1.0; color: btn_backs.down ? "#524E45" : "white" }
                    GradientStop {position: 0.1; color: btn_backs.down ? "white" : "#524E45" }
                }

                radius: 4
            }
            onClicked: {
                Utils.backspaceText()
            }
        }

        Button {
            id: btn_c

            height: 35
            width: r_grid.width / 4

            Layout.fillHeight: true
            Layout.fillWidth: true

            Layout.row: 3
            Layout.column: 5

            Text {
                id: t_c
                text: "C"
                //color: "#0067c5"
                color: "black"
                font.bold: true

                anchors.centerIn: parent
            }

            background: Rectangle {
                width: btn_c.width
                height: btn_c.height

                gradient: Gradient {
                    GradientStop {position: 1.0; color: btn_c.down ? "#524E45" : "white" }
                    GradientStop {position: 0.1; color: btn_c.down ? "white" : "#524E45" }
                }

                radius: 4
            }
            onClicked: {
                Utils.clearText()
                Utils.clearResult()
                Utils.clearTypeW()
            }
        }

        Button {
            id: btn_ce

            height: 35
            width: r_grid.width / 4

            Layout.fillHeight: true
            Layout.fillWidth: true

            Layout.row: 4
            Layout.column: 5



            Text {
                id: t_ce
                text: "CE"
                //color: "#0067c5"
                color: "black"
                font.bold: true

                anchors.centerIn: parent
            }

            background: Rectangle {
                width: btn_ce.width
                height: btn_ce.height

                gradient: Gradient {
                    GradientStop {position: 1.0; color: btn_ce.down ? "#524E45" : "white" }
                    GradientStop {position: 0.1; color: btn_ce.down ? "white" : "#524E45" }
                }

                radius: 4
            }
        }

        Button {
            id: btn_negativ

            height: 35
            width: r_grid.width / 4

            Layout.fillHeight: true
            Layout.fillWidth: true

            Layout.row: 2
            Layout.column: 5

            Text {
                id: t_neg
                text: "±"
                //color: "#0067c5"
                color: "black"
                font.bold: true

                anchors.centerIn: parent
            }

            background: Rectangle {
                width: btn_negativ.width
                height: btn_negativ.height

                gradient: Gradient {
                    GradientStop {position: 1.0; color: btn_negativ.down ? "#524E45" : "white" }
                    GradientStop {position: 0.1; color: btn_negativ.down ? "white" : "#524E45" }
                }

                radius: 4
            }
            onClicked: {
                Utils.setText("-")
            }
        }
    }
}

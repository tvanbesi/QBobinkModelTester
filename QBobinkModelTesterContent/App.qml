import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QBobinkModelTester
import Bobink 1.0

Window {
    width: 1200
    height: 800
    visible: true
    title: "QBobinkModelTester"

    StackView {
        id: stack
        anchors.fill: parent

        initialItem: ListView {
            model: QBobinkModel
            delegate: ItemDelegate {
                text: "Machine ID = " + machineId
                onClicked: stack.push(machinePageComponent, {
                                          "machineId": machineId
                                      })
            }
        }
    }

    Component {
        id: machinePageComponent

        Page {
            id: page
            property var machineId

            header: ToolBar {
                RowLayout {
                    anchors.fill: parent
                    ToolButton {
                        text: "Back"
                        onClicked: stack.pop()
                    }
                    Label {
                        id: rlLabel
                        Layout.fillWidth: true
                        horizontalAlignment: Text.AlignHCenter
                        text: "MACHINE ID = " + machineId
                    }
                }
            }

            ScrollView {
                anchors.fill: parent

                Column {
                    width: parent.width
                    spacing: 8

                    Row {
                        OPCUANode {
                            id: node1
                            machineId: page.machineId
                            namespaceId: 1
                            nodeId: 1
                        }
                        Text {
                            text: node1.nodeId + '\t' + node1.value
                        }
                    }
                    Row {
                        OPCUANode {
                            id: node2
                            machineId: page.machineId
                            namespaceId: 1
                            nodeId: 2
                        }
                        Text {
                            text: node2.nodeId + '\t' + node2.value
                        }
                    }
                    Row {
                        OPCUANode {
                            id: node3
                            machineId: page.machineId
                            namespaceId: 1
                            nodeId: 3
                        }
                        Text {
                            text: node3.nodeId + '\t' + node3.value
                        }
                    }
                    Row {
                        OPCUANode {
                            id: node4
                            machineId: page.machineId
                            namespaceId: 1
                            nodeId: 4
                        }
                        Text {
                            text: node4.nodeId + '\t' + node4.value
                        }
                    }
                    Row {
                        OPCUANode {
                            id: node5
                            machineId: page.machineId
                            namespaceId: 1
                            nodeId: 5
                        }
                        Text {
                            text: node5.nodeId + '\t' + node5.value
                        }
                    }
                    Row {
                        OPCUANode {
                            id: node6
                            machineId: page.machineId
                            namespaceId: 1
                            nodeId: 6
                        }
                        Text {
                            text: node6.nodeId + '\t' + node6.value
                        }
                    }
                    Row {
                        OPCUANode {
                            id: node7
                            machineId: page.machineId
                            namespaceId: 1
                            nodeId: 7
                        }
                        Text {
                            text: node7.nodeId + '\t' + node7.value
                        }
                    }
                    Row {
                        OPCUANode {
                            id: node8
                            machineId: page.machineId
                            namespaceId: 1
                            nodeId: 8
                        }
                        Text {
                            text: node8.nodeId + '\t' + node8.value
                        }
                    }
                    Row {
                        OPCUANode {
                            id: node9
                            machineId: page.machineId
                            namespaceId: 1
                            nodeId: 9
                        }
                        Text {
                            text: node9.nodeId + '\t' + node9.value
                        }
                    }
                    Row {
                        OPCUANode {
                            id: node10
                            machineId: page.machineId
                            namespaceId: 1
                            nodeId: 10
                        }
                        Text {
                            text: node10.nodeId + '\t' + node10.value
                        }
                    }
                    Row {
                        OPCUANode {
                            id: node11
                            machineId: page.machineId
                            namespaceId: 1
                            nodeId: 11
                        }
                        Text {
                            text: node11.nodeId + '\t' + node11.value
                        }
                    }
                    Row {
                        OPCUANode {
                            id: node12
                            machineId: page.machineId
                            namespaceId: 1
                            nodeId: 12
                        }
                        Text {
                            text: node12.nodeId + '\t' + node12.value
                        }
                    }
                    Row {
                        OPCUANode {
                            id: node13
                            machineId: page.machineId
                            namespaceId: 1
                            nodeId: 13
                        }
                        Text {
                            text: node13.nodeId + '\t' + node13.value
                        }
                    }
                    Row {
                        OPCUANode {
                            id: node14
                            machineId: page.machineId
                            namespaceId: 1
                            nodeId: 14
                        }
                        Text {
                            text: node14.nodeId + '\t' + node14.value
                        }
                    }
                    Row {
                        OPCUANode {
                            id: node15
                            machineId: page.machineId
                            namespaceId: 1
                            nodeId: 15
                        }
                        Text {
                            text: node15.nodeId + '\t' + node15.value
                        }
                    }
                    Row {
                        OPCUANode {
                            id: node16
                            machineId: page.machineId
                            namespaceId: 1
                            nodeId: 16
                        }
                        Text {
                            text: node16.nodeId + '\t' + node16.value
                        }
                    }
                    Row {
                        OPCUANode {
                            id: node17
                            machineId: page.machineId
                            namespaceId: 1
                            nodeId: 17
                        }
                        Text {
                            text: node17.nodeId + '\t' + node17.value
                        }
                    }
                    Row {
                        OPCUANode {
                            id: node18
                            machineId: page.machineId
                            namespaceId: 1
                            nodeId: 18
                        }
                        Text {
                            text: node18.nodeId + '\t' + node18.value
                        }
                    }
                    Row {
                        OPCUANode {
                            id: node19
                            machineId: page.machineId
                            namespaceId: 1
                            nodeId: 19
                        }
                        Text {
                            text: node19.nodeId + '\t' + node19.value
                        }
                    }
                    Row {
                        OPCUANode {
                            id: node20
                            machineId: page.machineId
                            namespaceId: 1
                            nodeId: 20
                        }
                        Text {
                            text: node20.nodeId + '\t' + node20.value
                        }
                    }
                    Row {
                        OPCUANode {
                            id: node21
                            machineId: page.machineId
                            namespaceId: 1
                            nodeId: 21
                        }
                        Text {
                            text: node21.nodeId + '\t' + node21.value
                        }
                    }
                    Row {
                        OPCUANode {
                            id: node22
                            machineId: page.machineId
                            namespaceId: 1
                            nodeId: 22
                        }
                        Text {
                            text: node22.nodeId + '\t' + node22.value
                        }
                    }
                    Row {
                        OPCUANode {
                            id: node23
                            machineId: page.machineId
                            namespaceId: 1
                            nodeId: 23
                        }
                        Text {
                            text: node23.nodeId + '\t' + node23.value
                        }
                    }

                    Row {
                        OPCUANode {
                            id: nodeT1
                            machineId: page.machineId
                            namespaceId: 1
                            nodeId: "NODE-1"
                        }
                        Text {
                            text: nodeT1.nodeId + '\t' + nodeT1.value
                        }
                    }
                    Row {
                        OPCUANode {
                            id: nodeT2
                            machineId: page.machineId
                            namespaceId: 1
                            nodeId: "NODE-2"
                        }
                        Text {
                            text: nodeT2.nodeId + '\t' + nodeT2.value
                        }
                    }
                    Row {
                        OPCUANode {
                            id: nodeT3
                            machineId: page.machineId
                            namespaceId: 1
                            nodeId: "NODE-3"
                        }
                        Text {
                            text: nodeT3.nodeId + '\t' + nodeT3.value
                        }
                    }
                    Row {
                        OPCUANode {
                            id: nodeT4
                            machineId: page.machineId
                            namespaceId: 1
                            nodeId: "NODE-4"
                        }
                        Text {
                            text: nodeT4.nodeId + '\t' + nodeT4.value
                        }
                    }
                    Row {
                        OPCUANode {
                            id: nodeT5
                            machineId: page.machineId
                            namespaceId: 1
                            nodeId: "NODE-5"
                        }
                        Text {
                            text: nodeT5.nodeId + '\t' + nodeT5.value
                        }
                    }
                    Row {
                        OPCUANode {
                            id: nodeT6
                            machineId: page.machineId
                            namespaceId: 1
                            nodeId: "NODE-6"
                        }
                        Text {
                            text: nodeT6.nodeId + '\t' + nodeT6.value
                        }
                    }
                    Row {
                        OPCUANode {
                            id: nodeT7
                            machineId: page.machineId
                            namespaceId: 1
                            nodeId: "NODE-7"
                        }
                        Text {
                            text: nodeT7.nodeId + '\t' + nodeT7.value
                        }
                    }
                    Row {
                        OPCUANode {
                            id: nodeT8
                            machineId: page.machineId
                            namespaceId: 1
                            nodeId: "NODE-8"
                        }
                        Text {
                            text: nodeT8.nodeId + '\t' + nodeT8.value
                        }
                    }
                    Row {
                        OPCUANode {
                            id: nodeT9
                            machineId: page.machineId
                            namespaceId: 1
                            nodeId: "NODE-9"
                        }
                        Text {
                            text: nodeT9.nodeId + '\t' + nodeT9.value
                        }
                    }
                    Row {
                        OPCUANode {
                            id: nodeT10
                            machineId: page.machineId
                            namespaceId: 1
                            nodeId: "NODE-10"
                        }
                        Text {
                            text: nodeT10.nodeId + '\t' + nodeT10.value
                        }
                    }
                    Row {
                        OPCUANode {
                            id: nodeT11
                            machineId: page.machineId
                            namespaceId: 1
                            nodeId: "NODE-11"
                        }
                        Text {
                            text: nodeT11.nodeId + '\t' + nodeT11.value
                        }
                    }
                    Row {
                        OPCUANode {
                            id: nodeT12
                            machineId: page.machineId
                            namespaceId: 1
                            nodeId: "NODE-12"
                        }
                        Text {
                            text: nodeT12.nodeId + '\t' + nodeT12.value
                        }
                    }
                    Row {
                        OPCUANode {
                            id: nodeT13
                            machineId: page.machineId
                            namespaceId: 1
                            nodeId: "NODE-13"
                        }
                        Text {
                            text: nodeT13.nodeId + '\t' + nodeT13.value
                        }
                    }
                    Row {
                        OPCUANode {
                            id: nodeT14
                            machineId: page.machineId
                            namespaceId: 1
                            nodeId: "NODE-14"
                        }
                        Text {
                            text: nodeT14.nodeId + '\t' + nodeT14.value
                        }
                    }
                    Row {
                        OPCUANode {
                            id: nodeT15
                            machineId: page.machineId
                            namespaceId: 1
                            nodeId: "NODE-15"
                        }
                        Text {
                            text: nodeT15.nodeId + '\t' + nodeT15.value
                        }
                    }
                    Row {
                        OPCUANode {
                            id: nodeT16
                            machineId: page.machineId
                            namespaceId: 1
                            nodeId: "NODE-16"
                        }
                        Text {
                            text: nodeT16.nodeId + '\t' + nodeT16.value
                        }
                    }
                    Row {
                        OPCUANode {
                            id: nodeT17
                            machineId: page.machineId
                            namespaceId: 1
                            nodeId: "NODE-17"
                        }
                        Text {
                            text: nodeT17.nodeId + '\t' + nodeT17.value
                        }
                    }
                    Row {
                        OPCUANode {
                            id: nodeT18
                            machineId: page.machineId
                            namespaceId: 1
                            nodeId: "NODE-18"
                        }
                        Text {
                            text: nodeT18.nodeId + '\t' + nodeT18.value
                        }
                    }
                    Row {
                        OPCUANode {
                            id: nodeT19
                            machineId: page.machineId
                            namespaceId: 1
                            nodeId: "NODE-19"
                        }
                        Text {
                            text: nodeT19.nodeId + '\t' + nodeT19.value
                        }
                    }
                    Row {
                        OPCUANode {
                            id: nodeT20
                            machineId: page.machineId
                            namespaceId: 1
                            nodeId: "NODE-20"
                        }
                        Text {
                            text: nodeT20.nodeId + '\t' + nodeT20.value
                        }
                    }
                    Row {
                        OPCUANode {
                            id: nodeT21
                            machineId: page.machineId
                            namespaceId: 1
                            nodeId: "NODE-21"
                        }
                        Text {
                            text: nodeT21.nodeId + '\t' + nodeT21.value
                        }
                    }
                    Row {
                        OPCUANode {
                            id: nodeT22
                            machineId: page.machineId
                            namespaceId: 1
                            nodeId: "NODE-22"
                        }
                        Text {
                            text: nodeT22.nodeId + '\t' + nodeT22.value
                        }
                    }
                    Row {
                        OPCUANode {
                            id: nodeT23
                            machineId: page.machineId
                            namespaceId: 1
                            nodeId: "NODE-23"
                        }
                        Text {
                            text: nodeT23.nodeId + '\t' + nodeT23.value
                        }
                    }
                }
            }
        }
    }
}

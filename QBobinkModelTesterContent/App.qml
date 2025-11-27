import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QBobinkModelTester
import Bobink 1.0
import "utils.js" as Utils

Window {
    width: 1200
    height: 800
    visible: true
    title: "QBobinkModelTester"

    // ==================================================
    // ==================================================
    // ==================================================

    // Peut être placé n'importe où pour agir quand le proxy se connecte/déconnecte
    Connections {
        target: QBobinkModel
        onProxyConnected: () => {
                              console.log("CONNECTED")
                              stack.push(initialStackItem)
                          }
        onProxyDisconnected: () => {
                                 console.log("DISCONNECTED")
                                 stack.push(proxyOffComp)
                             }
    }

    Component {
        id: proxyOffComp

        Rectangle {
            color: "lightgray"

            Text {
                text: "Proxy disconnected!"
                anchors.centerIn: parent
            }
        }
    }

    // ==================================================
    // ==================================================
    // ==================================================

    StackView {
        id: stack
        anchors.fill: parent
        initialItem: initialStackItem
    }

    Component {
        id: initialStackItem

        ListView {
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
                        TextField {
                            id: textField1
                        }
                        Button {
                            text: "WRITE"
                            onClicked: QBobinkModel.writeNodeScalar(
                                           page.machineId, node1.nodeId,
                                           node1.namespaceId,
                                           parseInt(textField1.text))
                        }
                        Text {
                            text: "UA_SByte → ID = " + node1.nodeId + '\t' + node1.value
                        }
                    }
                    Row {
                        OPCUANode {
                            id: node2
                            machineId: page.machineId
                            namespaceId: 1
                            nodeId: 2
                        }
                        TextField {
                            id: textField2
                        }
                        Button {
                            text: "WRITE"
                            onClicked: QBobinkModel.writeNodeScalar(
                                           page.machineId, node2.nodeId,
                                           node2.namespaceId,
                                           parseInt(textField2.text))
                        }
                        Text {
                            text: "UA_Byte → ID = " + node2.nodeId + '\t' + node2.value
                        }
                    }
                    Row {
                        OPCUANode {
                            id: node3
                            machineId: page.machineId
                            namespaceId: 1
                            nodeId: 3
                        }
                        TextField {
                            id: textField3
                        }
                        Button {
                            text: "WRITE"
                            onClicked: QBobinkModel.writeNodeScalar(
                                           page.machineId, node3.nodeId,
                                           node3.namespaceId,
                                           parseInt(textField3.text))
                        }
                        Text {
                            text: "UA_Int16 → ID = " + node3.nodeId + '\t' + node3.value
                        }
                    }
                    Row {
                        OPCUANode {
                            id: node4
                            machineId: page.machineId
                            namespaceId: 1
                            nodeId: 4
                        }
                        TextField {
                            id: textField4
                        }
                        Button {
                            text: "WRITE"
                            onClicked: QBobinkModel.writeNodeScalar(
                                           page.machineId, node4.nodeId,
                                           node4.namespaceId,
                                           parseInt(textField4.text))
                        }
                        Text {
                            text: "UA_UInt16 → ID = " + node4.nodeId + '\t' + node4.value
                        }
                    }
                    Row {
                        OPCUANode {
                            id: node5
                            machineId: page.machineId
                            namespaceId: 1
                            nodeId: 5
                        }
                        TextField {
                            id: textField5
                        }
                        Button {
                            text: "WRITE"
                            onClicked: QBobinkModel.writeNodeScalar(
                                           page.machineId, node5.nodeId,
                                           node5.namespaceId,
                                           parseInt(textField5.text))
                        }
                        Text {
                            text: "UA_Int32 → = " + node5.nodeId + '\t' + node5.value
                        }
                    }
                    Row {
                        OPCUANode {
                            id: node6
                            machineId: page.machineId
                            namespaceId: 1
                            nodeId: 6
                        }
                        TextField {
                            id: textField6
                        }
                        Button {
                            text: "WRITE"
                            onClicked: QBobinkModel.writeNodeScalar(
                                           page.machineId, node6.nodeId,
                                           node6.namespaceId,
                                           parseInt(textField6.text))
                        }
                        Text {
                            text: "UA_UInt32 → ID = " + node6.nodeId + '\t' + node6.value
                        }
                    }
                    Row {
                        OPCUANode {
                            id: node7
                            machineId: page.machineId
                            namespaceId: 1
                            nodeId: 7
                        }
                        TextField {
                            id: textField7
                        }
                        Button {
                            text: "WRITE"
                            onClicked: QBobinkModel.writeNodeScalar(
                                           page.machineId, node7.nodeId,
                                           node7.namespaceId,
                                           parseInt(textField7.text))
                        }
                        Text {
                            text: "UA_Int64 → ID = " + node7.nodeId + '\t' + node7.value
                        }
                    }
                    Row {
                        OPCUANode {
                            id: node8
                            machineId: page.machineId
                            namespaceId: 1
                            nodeId: 8
                        }
                        TextField {
                            id: textField8
                        }
                        Button {
                            text: "WRITE"
                            onClicked: QBobinkModel.writeNodeScalar(
                                           page.machineId, node8.nodeId,
                                           node8.namespaceId,
                                           parseInt(textField8.text))
                        }
                        Text {
                            text: "UA_UInt64 → ID = " + node8.nodeId + '\t' + node8.value
                        }
                    }
                    Row {
                        OPCUANode {
                            id: node9
                            machineId: page.machineId
                            namespaceId: 1
                            nodeId: 9
                        }
                        TextField {
                            id: textFieldIndex9
                            placeholderText: "Index..."
                        }
                        TextField {
                            id: textFieldVal9
                            placeholderText: "Value..."
                        }
                        Button {
                            text: "WRITE"
                            onClicked: {
                                let newArr = Utils.safeArrayEdit(
                                        node9.value, textFieldIndex9.text,
                                        parseInt(textFieldVal9.text))
                                QBobinkModel.writeNodeArray(page.machineId,
                                                            node9.nodeId,
                                                            node9.namespaceId,
                                                            newArr)
                            }
                        }
                        Text {
                            text: "UA_SByte[] → ID = " + node9.nodeId + '\t' + node9.value
                        }
                    }
                    Row {
                        OPCUANode {
                            id: node10
                            machineId: page.machineId
                            namespaceId: 1
                            nodeId: 10
                        }
                        TextField {
                            id: textFieldIndex10
                            placeholderText: "Index..."
                        }
                        TextField {
                            id: textFieldVal10
                            placeholderText: "Value..."
                        }
                        Button {
                            text: "WRITE"
                            onClicked: {
                                let newArr = Utils.safeArrayEdit(
                                        node10.value, textFieldIndex10.text,
                                        parseInt(textFieldVal10.text))
                                QBobinkModel.writeNodeArray(page.machineId,
                                                            node10.nodeId,
                                                            node10.namespaceId,
                                                            newArr)
                            }
                        }
                        Text {
                            text: "UA_Byte[] → ID = " + node10.nodeId + '\t' + node10.value
                        }
                    }
                    Row {
                        OPCUANode {
                            id: node11
                            machineId: page.machineId
                            namespaceId: 1
                            nodeId: 11
                        }
                        TextField {
                            id: textFieldIndex11
                            placeholderText: "Index..."
                        }
                        TextField {
                            id: textFieldVal11
                            placeholderText: "Value..."
                        }
                        Button {
                            text: "WRITE"
                            onClicked: {
                                let newArr = Utils.safeArrayEdit(
                                        node11.value, textFieldIndex11.text,
                                        parseInt(textFieldVal11.text))
                                QBobinkModel.writeNodeArray(page.machineId,
                                                            node11.nodeId,
                                                            node11.namespaceId,
                                                            newArr)
                            }
                        }
                        Text {
                            text: "UA_Int16[] → ID = " + node11.nodeId + '\t' + node11.value
                        }
                    }
                    Row {
                        OPCUANode {
                            id: node12
                            machineId: page.machineId
                            namespaceId: 1
                            nodeId: 12
                        }
                        TextField {
                            id: textFieldIndex12
                            placeholderText: "Index..."
                        }
                        TextField {
                            id: textFieldVal12
                            placeholderText: "Value..."
                        }
                        Button {
                            text: "WRITE"
                            onClicked: {
                                let newArr = Utils.safeArrayEdit(
                                        node12.value, textFieldIndex12.text,
                                        parseInt(textFieldVal12.text))
                                QBobinkModel.writeNodeArray(page.machineId,
                                                            node12.nodeId,
                                                            node12.namespaceId,
                                                            newArr)
                            }
                        }
                        Text {
                            text: "UA_UInt16[] → ID = " + node12.nodeId + '\t' + node12.value
                        }
                    }
                    Row {
                        OPCUANode {
                            id: node13
                            machineId: page.machineId
                            namespaceId: 1
                            nodeId: 13
                        }
                        TextField {
                            id: textFieldIndex13
                            placeholderText: "Index..."
                        }
                        TextField {
                            id: textFieldVal13
                            placeholderText: "Value..."
                        }
                        Button {
                            text: "WRITE"
                            onClicked: {
                                let newArr = Utils.safeArrayEdit(
                                        node13.value, textFieldIndex13.text,
                                        parseInt(textFieldVal13.text))
                                QBobinkModel.writeNodeArray(page.machineId,
                                                            node13.nodeId,
                                                            node13.namespaceId,
                                                            newArr)
                            }
                        }
                        Text {
                            text: "UA_Int32[] → ID = " + node13.nodeId + '\t' + node13.value
                        }
                    }
                    Row {
                        OPCUANode {
                            id: node14
                            machineId: page.machineId
                            namespaceId: 1
                            nodeId: 14
                        }
                        TextField {
                            id: textFieldIndex14
                            placeholderText: "Index..."
                        }
                        TextField {
                            id: textFieldVal14
                            placeholderText: "Value..."
                        }
                        Button {
                            text: "WRITE"
                            onClicked: {
                                let newArr = Utils.safeArrayEdit(
                                        node14.value, textFieldIndex14.text,
                                        parseInt(textFieldVal14.text))
                                QBobinkModel.writeNodeArray(page.machineId,
                                                            node14.nodeId,
                                                            node14.namespaceId,
                                                            newArr)
                            }
                        }
                        Text {
                            text: "UA_UInt32[] → ID = " + node14.nodeId + '\t' + node14.value
                        }
                    }
                    Row {
                        OPCUANode {
                            id: node15
                            machineId: page.machineId
                            namespaceId: 1
                            nodeId: 15
                        }
                        TextField {
                            id: textFieldIndex15
                            placeholderText: "Index..."
                        }
                        TextField {
                            id: textFieldVal15
                            placeholderText: "Value..."
                        }
                        Button {
                            text: "WRITE"
                            onClicked: {
                                let newArr = Utils.safeArrayEdit(
                                        node15.value, textFieldIndex15.text,
                                        parseInt(textFieldVal15.text))
                                QBobinkModel.writeNodeArray(page.machineId,
                                                            node15.nodeId,
                                                            node15.namespaceId,
                                                            newArr)
                            }
                        }
                        Text {
                            text: "UA_Int64[] → ID = " + node15.nodeId + '\t' + node15.value
                        }
                    }
                    Row {
                        OPCUANode {
                            id: node16
                            machineId: page.machineId
                            namespaceId: 1
                            nodeId: 16
                        }
                        TextField {
                            id: textFieldIndex16
                            placeholderText: "Index..."
                        }
                        TextField {
                            id: textFieldVal16
                            placeholderText: "Value..."
                        }
                        Button {
                            text: "WRITE"
                            onClicked: {
                                let newArr = Utils.safeArrayEdit(
                                        node16.value, textFieldIndex16.text,
                                        parseInt(textFieldVal16.text))
                                QBobinkModel.writeNodeArray(page.machineId,
                                                            node16.nodeId,
                                                            node16.namespaceId,
                                                            newArr)
                            }
                        }
                        Text {
                            text: "UA_UInt64[] → ID = " + node16.nodeId + '\t' + node16.value
                        }
                    }
                    Row {
                        OPCUANode {
                            id: node17
                            machineId: page.machineId
                            namespaceId: 1
                            nodeId: 17
                        }
                        ComboBox {
                            id: node17cb
                            model: ["true", "false"]
                        }
                        Button {
                            text: "WRITE"
                            onClicked: {
                                QBobinkModel.writeNodeScalar(
                                            page.machineId, node17.nodeId,
                                            node17.namespaceId,
                                            node17cb.currentValue === "true" ? true : false)
                            }
                        }

                        Text {
                            text: "UA_Bool → ID = " + node17.nodeId + '\t' + node17.value
                        }
                    }
                    Row {
                        OPCUANode {
                            id: node18
                            machineId: page.machineId
                            namespaceId: 1
                            nodeId: 18
                        }
                        TextField {
                            id: textFieldIndex18
                            placeholderText: "Index..."
                        }
                        ComboBox {
                            id: node18cb
                            model: ["true", "false"]
                        }
                        Button {
                            text: "WRITE"
                            onClicked: {
                                let newArr = Utils.safeArrayEdit(
                                        node18.value, textFieldIndex18.text,
                                        node18cb.currentValue === "true" ? true : false)
                                console.log(newArr)
                                QBobinkModel.writeNodeArray(page.machineId,
                                                            node18.nodeId,
                                                            node18.namespaceId,
                                                            newArr)
                            }
                        }
                        Text {
                            text: "UA_Bool[] → ID = " + node18.nodeId + '\t' + node18.value
                        }
                    }
                    Row {
                        OPCUANode {
                            id: node19
                            machineId: page.machineId
                            namespaceId: 1
                            nodeId: 19
                        }
                        TextField {
                            id: textField19
                        }
                        Button {
                            text: "WRITE"
                            onClicked: QBobinkModel.writeNodeScalar(
                                           page.machineId, node19.nodeId,
                                           node19.namespaceId,
                                           parseFloat(textField19.text))
                        }
                        Text {
                            text: "UA_Float → ID = " + node19.nodeId + '\t' + node19.value
                        }
                    }
                    Row {
                        OPCUANode {
                            id: node20
                            machineId: page.machineId
                            namespaceId: 1
                            nodeId: 20
                        }
                        TextField {
                            id: textField20
                        }
                        Button {
                            text: "WRITE"
                            onClicked: QBobinkModel.writeNodeScalar(
                                           page.machineId, node20.nodeId,
                                           node20.namespaceId,
                                           parseInt(textField20.text))
                        }
                        Text {
                            text: "UA_Double → ID = " + node20.nodeId + '\t' + node20.value
                        }
                    }
                    Row {
                        OPCUANode {
                            id: node21
                            machineId: page.machineId
                            namespaceId: 1
                            nodeId: 21
                        }
                        TextField {
                            id: textFieldIndex21
                            placeholderText: "Index..."
                        }
                        TextField {
                            id: textFieldVal21
                            placeholderText: "Value..."
                        }
                        Button {
                            text: "WRITE"
                            onClicked: {
                                let newArr = Utils.safeArrayEdit(
                                        node21.value, textFieldIndex21.text,
                                        parseFloat(textFieldVal21.text))
                                QBobinkModel.writeNodeArray(page.machineId,
                                                            node21.nodeId,
                                                            node21.namespaceId,
                                                            newArr)
                            }
                        }
                        Text {
                            text: "UA_Float[] → ID = " + node21.nodeId + '\t' + node21.value
                        }
                    }
                    Row {
                        OPCUANode {
                            id: node22
                            machineId: page.machineId
                            namespaceId: 1
                            nodeId: 22
                        }
                        TextField {
                            id: textFieldIndex22
                            placeholderText: "Index..."
                        }
                        TextField {
                            id: textFieldVal22
                            placeholderText: "Value..."
                        }
                        Button {
                            text: "WRITE"
                            onClicked: {
                                let newArr = Utils.safeArrayEdit(
                                        node22.value, textFieldIndex22.text,
                                        parseFloat(textFieldVal22.text))
                                QBobinkModel.writeNodeArray(page.machineId,
                                                            node22.nodeId,
                                                            node22.namespaceId,
                                                            newArr)
                            }
                        }
                        Text {
                            text: "UA_Double[] → ID = " + node22.nodeId + '\t' + node22.value
                        }
                    }
                    Row {
                        OPCUANode {
                            id: node23
                            machineId: page.machineId
                            namespaceId: 1
                            nodeId: 23
                        }
                        TextField {
                            id: textField23
                        }
                        Button {
                            text: "WRITE"
                            onClicked: QBobinkModel.writeNodeScalar(
                                           page.machineId, node23.nodeId,
                                           node23.namespaceId, textField23.text)
                        }
                        Text {
                            text: node23.nodeId + '\t' + node23.value
                        }
                    }
                    Row {
                        OPCUANode {
                            id: node24
                            machineId: page.machineId
                            namespaceId: 1
                            nodeId: 24
                        }
                        TextField {
                            id: textFieldIndex24
                            placeholderText: "Index..."
                        }
                        TextField {
                            id: textFieldVal24
                            placeholderText: "Value..."
                        }
                        Button {
                            text: "WRITE"
                            onClicked: {
                                let newArr = Utils.safeArrayEdit(
                                        node24.value, textFieldIndex24.text,
                                        textFieldVal24.text)
                                QBobinkModel.writeNodeArray(page.machineId,
                                                            node24.nodeId,
                                                            node24.namespaceId,
                                                            newArr)
                            }
                        }
                        Text {
                            text: node24.nodeId + '\t' + node24.value
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

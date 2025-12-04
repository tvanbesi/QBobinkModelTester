import QtQuick
import Bobink 1.0

// TODO cleanup, use Connection instead of connect
// fix duplicate nodeInit signals being received
// discard connection after init
// qmltype integration for node and machine types
Item {
    id: root

    property var machineId
    property var nodeId
    property int namespaceId

    property var machine
    property var node
    property var value
    property var nodeIdStr

    Component.onCompleted: {
        if (root.machineId === undefined) {
            console.error("undefined machineId")
            return
        }
        root.machine = QBobinkModel.getMachineById(root.machineId)
        if (root.machine === null) {
            console.error("Could not find machine with ID = ", root.machineId)
            return
        }
        if (root.nodeId === undefined) {
            console.error("undefined nodeId")
            return
        }
        if (root.namespaceId === undefined) {
            console.error("undefined namespaceId")
            return
        }

        root.nodeIdStr = "ns=" + namespaceId + ';'
                + (typeof nodeId === "string" ? "s=" : "i=") + nodeId

        root.machine.subReq(root.namespaceId, root.nodeId)
        root.machine.nodeReadReq(root.namespaceId, root.nodeId)
        root.node = root.machine.getNode(root.nodeIdStr)
        if (root.node && root.node.value)
            root.value = root.node.value
        if (root.node === null) {
            root.machine.nodeInit.connect(function (idStr) {
                if ((node !== null && node !== undefined)
                        || idStr !== root.nodeIdStr)
                    return
                root.node = root.machine.getNode(idStr)
                connectValueChanged()
            })
            return
        } else
            connectValueChanged()
    }

    function connectValueChanged() {
        root.node.valueChanged.connect(function () {
            root.value = root.node.value
        })
    }
}

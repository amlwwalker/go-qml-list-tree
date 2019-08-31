
import QtQuick 2.0

Rectangle {
    id: root
    anchors.fill: parent
    GridView {
        id: grid
        anchors.fill: parent
        anchors.margins: 5
        cellWidth: parent.width - 10; cellHeight: 80
        // spacing: 10
        model: ContactModel {}
        delegate: Component {
            id: contactDelegate
            Card {}
        }
        highlight: Rectangle { color: "lightpink"; radius: 5 }
    }
}
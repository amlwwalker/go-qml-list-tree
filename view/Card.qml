
import QtQuick 2.13
import QtQuick.Layouts 1.3
Item {
    width: grid.cellWidth; height: grid.cellHeight
    // anchors.leftMargin: 5; 
    // anchors.rightMargin: 5
    Rectangle {
      id: borderRectangle
      anchors.fill: parent
      anchors.margins: 5
      border.color: "hotpink"
      MouseArea {
          id: mouseRegion
          anchors.fill: parent
          hoverEnabled: true
          onEntered: {
            grid.currentIndex = model.index
            if (pressed) {
              borderRectangle.border.color = "black"
            } else {
              borderRectangle.border.color = "hotpink"
            }
          }

      }
    }
GridLayout {
    id : gridLayout
    anchors.fill: parent
    anchors.leftMargin: 5; 
    anchors.rightMargin: 5
    rows    : 12
    columns : 12
    property double colMulti : gridLayout.width / gridLayout.columns
    property double rowMulti : gridLayout.height / gridLayout.rows
    function prefWidth(item){
        return colMulti * item.Layout.columnSpan
    }
    function prefHeight(item){
        return rowMulti * item.Layout.rowSpan
    }

    Rectangle {
        color : 'transparent'
        Layout.rowSpan   : 10
        Layout.columnSpan: 3
        Layout.preferredWidth  : gridLayout.prefWidth(this)
        Layout.preferredHeight : gridLayout.prefHeight(this)
        // border.color: "hotPink"
        Column {
          anchors.fill: parent
          padding: 5
          spacing: 10
          Text { text: "Name"; anchors.horizontalCenter: parent.horizontalCenter; font.bold: true}
          Text { text: name; anchors.horizontalCenter: parent.horizontalCenter; }
        }
    }
    Rectangle {
        color : 'transparent'
        Layout.rowSpan   : 10
        Layout.columnSpan: 3
        Layout.preferredWidth  : gridLayout.prefWidth(this)
        Layout.preferredHeight : gridLayout.prefHeight(this)
        Column {
          anchors.fill: parent
          padding: 5
          spacing: 10
          Text { text: "FileSize"; anchors.horizontalCenter: parent.horizontalCenter; font.bold: true}
          Text { text: size; anchors.horizontalCenter: parent.horizontalCenter; }
        }
    }
    Rectangle {
        color : 'transparent'
        Layout.rowSpan   : 10
        Layout.columnSpan: 3
        Layout.preferredWidth  : gridLayout.prefWidth(this)
        Layout.preferredHeight : gridLayout.prefHeight(this)
        Column {
          anchors.fill: parent
          padding: 5
          spacing: 10
          Text { text: "Created At"; anchors.horizontalCenter: parent.horizontalCenter; font.bold: true}
          Text { text: createdAt; anchors.horizontalCenter: parent.horizontalCenter; }
        }
    }
    Rectangle {
        color : 'transparent'
        Layout.rowSpan   : 10
        Layout.columnSpan: 3
        Layout.preferredWidth  : gridLayout.prefWidth(this)
        Layout.preferredHeight : gridLayout.prefHeight(this)
        Column {
          anchors.fill: parent
          padding: 5
          spacing: 10
          Text { text: "Created At"; anchors.horizontalCenter: parent.horizontalCenter; font.bold: true}
          Text { text: createdAt; anchors.horizontalCenter: parent.horizontalCenter; }
        }
    }
    // Rectangle {
    //     id : greenRect
    //     color : 'green'
    //     Layout.rowSpan : 2
    //     Layout.columnSpan : 12
    //     Layout.preferredWidth  : gridLayout.prefWidth(this)
    //     Layout.preferredHeight : gridLayout.prefHeight(this)
    //     Text { text: name; anchors.horizontalCenter: parent.horizontalCenter }
    // }
}
    // ColumnLayout {
    //     anchors.fill: parent
    // Row {
    //   anchors.fill: parent
    // Column {
    //   anchors.fill: parent
    //     // Image { source: portrait; anchors.horizontalCenter: parent.horizontalCenter }
    //     Text { text: name; anchors.horizontalCenter: parent.horizontalCenter }
    //     Text { text: portrait; anchors.horizontalCenter: parent.horizontalCenter }
    // }
    // }
    // Row {
    //   anchors.fill: parent
    // Column {
    //     anchors.fill: parent
    //     Text { text: createdAt; anchors.horizontalCenter: parent.horizontalCenter }
    //     Text { text: size; anchors.horizontalCenter: parent.horizontalCenter }
    // }
    // }
    // }
}

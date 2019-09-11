import QtQuick.Controls 2.4
import QtQuick.Dialogs 1.2
import QtQuick.Layouts 1.3
import QtQuick 2.2
import QtQuick.Controls 1.4 as Old
import QtQuick.Controls.Styles 1.4
import QtQuick.Controls.Private 1.0

ApplicationWindow {
  id: window
  width: 300; height: 300
  title: "Calendar Example"
  visible: true
  ColumnLayout {
      anchors.fill: parent
    Old.Calendar {
      id: calendar
      style: CalendarStyle {
          gridVisible: true
      dayOfWeekDelegate: Rectangle {
          color: gridVisible ? "#fcfcfc" : "transparent"
          implicitHeight: Math.round(TextSingleton.implicitHeight * 2.25)
          Label {
              text: control.locale.dayName(styleData.dayOfWeek, control.dayOfWeekFormat)
              anchors.centerIn: parent
          }
      }
        navigationBar: Rectangle {
          height: Math.round(TextSingleton.implicitHeight * 2.73)
          color: "#f9f9f9"

          Rectangle {
              color: Qt.rgba(1,1,1,0.6)
              height: 1
              width: parent.width
          }

          Rectangle {
              anchors.bottom: parent.bottom
              height: 1
              width: parent.width
              color: "#ddd"
          }

          HoverButton {
              id: previousMonth
              width: parent.height
              height: width
              anchors.verticalCenter: parent.verticalCenter
              anchors.left: parent.left
              source: "./assets/leftanglearrow.png"
              onClicked: control.showPreviousMonth()
          }
          Label {
              id: dateText
              text: styleData.title
              elide: Text.ElideRight
              horizontalAlignment: Text.AlignHCenter
              font.pixelSize: TextSingleton.implicitHeight * 1.25
              anchors.verticalCenter: parent.verticalCenter
              anchors.left: previousMonth.right
              anchors.leftMargin: 2
              anchors.right: nextMonth.left
              anchors.rightMargin: 2
          }
          HoverButton {
              id: nextMonth
              width: parent.height
              height: width
              anchors.verticalCenter: parent.verticalCenter
              anchors.right: parent.right
              source: "./assets/rightanglearrow.png"
              onClicked: control.showNextMonth()
          }
        } 
      }
    }
  }
}
// https://doc-snapshots.qt.io/qt5-5.9/qtquickcontrols-calendar-example.html
// Old.Calendar {
//     // width: (parent.width > parent.height ? parent.width * 0.6 - parent.spacing : parent.width)
//     // height: (parent.height > parent.width ? parent.height * 0.6 - parent.spacing : parent.height)
//       // frameVisible: true
//     // weekNumbersVisible: true
//     style: CalendarStyle {
//         dayDelegate: Item {
//             Image {
//                 visible: eventModel.eventsForDate(styleData.date).length > 0
//                 source: "./assets/eventindicator.png"
//             }
//         }
//     }
// }
//   Old.Calendar {
//     id: calendar
//     width: parent.width * 0.6 - row.spacing / 2
//     height: parent.height
//     selectedDate: new Date(2014, 0, 1)
//     focus: true

//     style: CalendarStyle {
//         readonly property var eventColours: ["lightblue", "darkorange", "purple"]

//         dayDelegate: Item {
//             readonly property color sameMonthDateTextColor: "#444"
//             readonly property color selectedDateColor: Qt.platform.os === "osx" ? "#3778d0" : __syspal.highlight
//             readonly property color selectedDateTextColor: "white"
//             readonly property color differentMonthDateTextColor: "#bbb"
//             readonly property color invalidDatecolor: "#dddddd"

//             Rectangle {
//                 id: selectionRect
//                 anchors.fill: parent
//                 border.color: "transparent"
//                 color: styleData.date !== undefined && styleData.selected ? selectedDateColor : "transparent"
//                 anchors.margins: styleData.selected ? -1 : 0
//             }

//             Label {
//                 id: dayDelegateText
//                 text: styleData.date.getDate()
//                 font.pixelSize: 14
//                 anchors.left: parent.left
//                 anchors.leftMargin: 2
//                 anchors.top: parent.top
//                 anchors.topMargin: 2
//                 color: {
//                     var color = invalidDatecolor;
//                     if (styleData.valid) {
//                         // Date is within the valid range.
//                         color = styleData.visibleMonth ? sameMonthDateTextColor : differentMonthDateTextColor;
//                         if (styleData.selected) {
//                             color = selectedDateTextColor;
//                         }
//                     }
//                     color;
//                 }
//             }

//             ListView {
//                 id: rectView
//                 anchors.left: parent.left
//                 anchors.right: parent.right
//                 anchors.top: dayDelegateText.bottom
//                 anchors.bottom: parent.bottom
//                 anchors.margins: -1
//                 clip: true
//                 interactive: false
//                 model: eventModel.eventsForDate(styleData.date)
//                 delegate: Rectangle {
//                     color: eventColours[index % eventColours.length]
//                     width: parent.width
//                     height: 10

//                     Label {
//                         text: modelData.name
//                         anchors.fill: parent
//                         font.pixelSize: 8
//                         fontSizeMode: Text.Fit
//                     }
//                 }
//             }
//         }
//     }
// }

// }
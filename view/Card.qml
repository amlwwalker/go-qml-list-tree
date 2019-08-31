
import QtQuick 2.13
import QtQuick.Layouts 1.3
Item {
    width: grid.cellWidth; height: grid.cellHeight

    // anchors.leftMargin: 5; 
    // anchors.rightMargin: 5
    // Rectangle {
    //   id: borderRectangle
    //   anchors.fill: parent
    //   anchors.margins: 5
    //   border.color: "hotpink"
    //   MouseArea {
    //       id: mouseRegion
    //       anchors.fill: parent
    //       hoverEnabled: true
    //       onEntered: {
    //         grid.currentIndex = model.index
    //         if (pressed) {
    //           borderRectangle.border.color = "black"
    //         } else {
    //           borderRectangle.border.color = "hotpink"
    //         }
    //       }

    //   }
    // }
    /*
            m: ListModel {
          ListElement { name: "Puss in Boots"; type: "Cats"; aVisible: false}
          ListElement { name: "Bengal"; type: "Cats"; aVisible: false }
          ListElement { name: "Pug"; type: "Dogs"; aVisible: false }
          ListElement { name: "German Shepherd"; type: "Dogs"; aVisible: false }
          ListElement { name: "Parrot"; type: "Birds"; aVisible: false }
      }
      */
    ListView {
        id: listing
        anchors.fill: parent
        model: subItems
        section.property: "type"
        section.criteria: ViewSection.FullString
        section.delegate: Rectangle {
          id: child
          height: 50
          width: parent.width
          color: "white"
          border.color: "hotpink"
          Text {
              text: section
              anchors.centerIn: parent
          }
          MouseArea{
              anchors.fill: parent
              onClicked: {
                  console.log("parent clicked", subItems.count );
                  for(var i=0; i<subItems.count; i++)
                  {
                      //get this element from the list model
                      var animal = subItems.get(i);
                      //if the type of this animal, is equal to the current section
                      //and this animal is not visible,
                      //make it visible and colour it red
                      // console.log("animal type: ", animal.type, " section: ", section)
                      if(animal.type === section && animal.aVisible == false) {
                          animal.aVisible = true;
                          child.color = "white"
                      }
                      //otherwise hide it and set it back to green.
                      else if (animal.type === section && animal.aVisible == true) {
                          animal.aVisible = false;
                          child.color = "white"
                      }
                      
                      else {
                          animal.aVisible = false;
                      }
                  }
              }
          }
        }
        //the delegate for the sub menu
        delegate: 
          GridLayout {
          id : gridLayout
          width: parent.width
          anchors.leftMargin: 5; 
          anchors.rightMargin: 5
          visible: aVisible
          onVisibleChanged: {
              if(visible)
                  height = 100
              else
                  height = 0;
          }
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
        }
        // }
          // Rectangle {
          //     color : 'transparent'
          //     // anchors.fill: parent
          //     width: parent.width
          //     // Layout.rowSpan   : 10
          //     // Layout.columnSpan: 3
          //     // Layout.preferredWidth  : parent.width//paren.prefWidth(this)
          //     // Layout.preferredHeight : parent.height//gridLayout.prefHeight(this)
          //     Column {
          //       anchors.fill: parent
          //       padding: 5
          //       spacing: 10
          //       Text { text: "Name"; anchors.horizontalCenter: parent.horizontalCenter; font.bold: true}
          //       Text { text: "helo " + index; anchors.horizontalCenter: parent.horizontalCenter; }
          //     }
          // }

        
        // section.property: "type"
        // section.criteria: ViewSection.FullString
        //the delegate for top level animals
        // section.delegate: sectionHeader
    }
// GridLayout {
//     id : gridLayout
//     anchors.fill: parent
//     anchors.leftMargin: 5; 
//     anchors.rightMargin: 5
//     rows    : 12
//     columns : 12
//     property double colMulti : gridLayout.width / gridLayout.columns
//     property double rowMulti : gridLayout.height / gridLayout.rows
//     function prefWidth(item){
//         return colMulti * item.Layout.columnSpan
//     }
//     function prefHeight(item){
//         return rowMulti * item.Layout.rowSpan
//     }

//     Rectangle {
//         color : 'transparent'
//         Layout.rowSpan   : 10
//         Layout.columnSpan: 3
//         Layout.preferredWidth  : gridLayout.prefWidth(this)
//         Layout.preferredHeight : gridLayout.prefHeight(this)
//         // border.color: "hotPink"
//         Column {
//           anchors.fill: parent
//           padding: 5
//           spacing: 10
//           Text { text: "Name"; anchors.horizontalCenter: parent.horizontalCenter; font.bold: true}
//           Text { text: name; anchors.horizontalCenter: parent.horizontalCenter; }
//         }
//     }
//     Rectangle {
//         color : 'transparent'
//         Layout.rowSpan   : 10
//         Layout.columnSpan: 3
//         Layout.preferredWidth  : gridLayout.prefWidth(this)
//         Layout.preferredHeight : gridLayout.prefHeight(this)
//         Column {
//           anchors.fill: parent
//           padding: 5
//           spacing: 10
//           Text { text: "FileSize"; anchors.horizontalCenter: parent.horizontalCenter; font.bold: true}
//           Text { text: size; anchors.horizontalCenter: parent.horizontalCenter; }
//         }
//     }
//     Rectangle {
//         color : 'transparent'
//         Layout.rowSpan   : 10
//         Layout.columnSpan: 3
//         Layout.preferredWidth  : gridLayout.prefWidth(this)
//         Layout.preferredHeight : gridLayout.prefHeight(this)
//         Column {
//           anchors.fill: parent
//           padding: 5
//           spacing: 10
//           Text { text: "Created At"; anchors.horizontalCenter: parent.horizontalCenter; font.bold: true}
//           Text { text: createdAt; anchors.horizontalCenter: parent.horizontalCenter; }
//         }
//     }
//     Rectangle {
//         color : 'transparent'
//         Layout.rowSpan   : 10
//         Layout.columnSpan: 3
//         Layout.preferredWidth  : gridLayout.prefWidth(this)
//         Layout.preferredHeight : gridLayout.prefHeight(this)
//         Column {
//           anchors.fill: parent
//           padding: 5
//           spacing: 10
//           Text { text: "Created At"; anchors.horizontalCenter: parent.horizontalCenter; font.bold: true}
//           Text { text: createdAt; anchors.horizontalCenter: parent.horizontalCenter; }
//         }
//     }
//   }
}

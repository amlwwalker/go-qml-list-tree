import QtQuick 2.6
import QtQuick.Layouts 1.3


// import QtQuick 2.0

// Rectangle {
//     id: root
//     anchors.fill: parent
//     GridView {
//         id: grid
//         anchors.fill: parent
//         anchors.margins: 5
//         cellWidth: parent.width - 10; cellHeight: 80
//         // spacing: 10
//         model: ContactModel {}
//         delegate: Component {
//             id: contactDelegate
//             Card {}
//         }
//         highlight: Rectangle { color: "lightpink"; radius: 5 }
//     }
// }

Item{
    id: root
    width: 800; height: 1000
    ListModel {
        id: contactModel
        ListElement {
            name: "James Bond"
            portrait: "pics/007.png"
            createdAt: "12-06-2018"
            size: "16MB"
            aVisible: false
        }
        ListElement {
            name: "James Bond"
            portrait: "pics/006.png"
            createdAt: "13-06-2018"
            size: "18MB"
            aVisible: false
        }     
        ListElement {
            name: "Jim Williams"
            portrait: "pics/williams.png"
            createdAt: "12-06-2018"
            size: "16MB"
            aVisible: false
        }
        ListElement {
            name: "Jim Williams"
            portrait: "pics/Jim.png"
            createdAt: "13-06-2018"
            size: "18MB"
            aVisible: false
        }     
        ListElement {
            name: "John Brown"
            portrait: "pics/brown.png"
            createdAt: "12-06-2018"
            size: "16MB"
            aVisible: false
        }
        ListElement {
            name: "John Brown"
            portrait: "pics/john.png"
            createdAt: "13-06-2018"
            size: "18MB"
            aVisible: false
        }        
    }
    Component {
        id: sectionHeader
        
        Rectangle {
            id: sectionRectangle
            width: root.width
            color:"lightpink"
            height: 50
            border.color: "hotpink"
            // color: model.index % 2 == 0 ? "hotpink" : "#eee"
                Text {
                    text: section
                    anchors.centerIn: parent
                }
            
            
            MouseArea{
                anchors.fill: parent
                hoverEnabled: true
                onEntered: {
                    // grid.currentIndex = model.index
                    // if (entered) {
                    sectionRectangle.border.color = "black"
                    sectionRectangle.border.width = 2
                    // }
                }
                onExited: {
                    sectionRectangle.border.color = "hotpink"
                    sectionRectangle.border.width = 1
                }
                onClicked: {
                    console.log("parent clicked ", contactModel.count);
                    for(var i=0; i<contactModel.count; i++)
                    {
                        //get this element from the list model
                        var contact = contactModel.get(i);
                        //if the type of this animal, is equal to the current section
                        //and this animal is not visible,
                        //make it visible and colour it red
                        if(contact.name === section && contact.aVisible == false) {
                            console.log("true", contact.name, section)
                            contact.aVisible = true;
                            sectionRectangle.color = "#ddd"
                        }
                        //otherwise hide it and set it back to green.
                        else if (contact.name === section && contact.aVisible == true) {
                            console.log("true", contact.name, section)
                            contact.aVisible = false;
                            sectionRectangle.color = "lightpink"
                        }
                        
                        else {
                            // contact.aVisible = false;
                            //                            sectionRectangle.color = "green" //makes everything green
                        }
                    }
                }
            }
        }
    }
    
    
    ListView {
        id: listing
        width: parent.width
        height: parent.height
        model: contactModel
        anchors.margins: 5
        //the delegate for the sub menu
        delegate: listdelegate
        spacing: 2
        section.property: "name"
        section.criteria: ViewSection.FullString
        //the delegate for top level animals
        section.delegate: sectionHeader
        // highlight: Rectangle { color: "lightpink"; radius: 5 }
    }
    Component {
        id: listdelegate
            //when visible set its height
            // Rectangle {
            //     anchors.fill: parent
            //     color: "transparent"
            //     // anchors.horizontalCenter: parent.horizontalCenter
            //     // anchors.verticalCenter: parent.verticalCenter
            //     // width: parent.width//styleData.selected ? parent.width / 2 : 0
            //     // height: parent.height//styleData.selected ? parent.height / 2 : 0
            // MouseArea {
            //     anchors.fill: parent
            //     onClicked: {
            //         console.log(styleData.date.getDate())
            //     }
            // }
            GridLayout {
                id : gridLayout
                width: root.width
                anchors.top: sectionHeader.bottom
                visible: aVisible
                onVisibleChanged: {
                    if(visible)
                        height = 55;
                    else
                        height = 0;
                }
                anchors.margins: 10;
                //animate the change when its expanded
                Behavior on height {
                    NumberAnimation { duration: 150 }
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
                    Layout.rowSpan   : 12
                    Layout.columnSpan: 3
                    Layout.preferredWidth  : gridLayout.prefWidth(this)
                    Layout.preferredHeight : gridLayout.prefHeight(this)
                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            listing.currentIndex = index;
                            console.log("clicked index ", listing.currentIndex)
                        }
                    }
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
                    Layout.rowSpan   : 12
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
                    Layout.rowSpan   : 12
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
                    Layout.rowSpan   : 12
                    Layout.columnSpan: 3
                    Layout.preferredWidth  : gridLayout.prefWidth(this)
                    Layout.preferredHeight : gridLayout.prefHeight(this)
                    Column {
                    anchors.fill: parent
                    padding: 5
                    spacing: 10
                    Text { text: "Portrait"; anchors.horizontalCenter: parent.horizontalCenter; font.bold: true}
                    Text { text: portrait; anchors.horizontalCenter: parent.horizontalCenter; }
                    }
                }
        }
    }
}
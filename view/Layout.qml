import QtQuick 2.6
import QtQuick.Layouts 1.3

Item{
    id: root
    width: 800; height: 1000
    property var sectionHeader:listing.section.delegate
    
    ListView {
        id: listing
        width: parent.width
        height: parent.height
        model: ContactModel {}
        anchors.margins: 5
        //the delegate for the sub menu
        delegate: listdelegate
        spacing: 2
        section.property: "name"
        section.criteria: ViewSection.FullString
        //the delegate for top level animals
        section.delegate: ContactHeader{}
    }
    Component {
        id: listdelegate
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
                    Layout.columnSpan: 2
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
                    Layout.columnSpan: 2
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
                    Layout.columnSpan: 2
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
                    Layout.columnSpan: 2
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
                Rectangle {
                    color : 'transparent'
                    Layout.rowSpan   : 12
                    Layout.columnSpan: 2
                    Layout.preferredWidth  : gridLayout.prefWidth(this)
                    Layout.preferredHeight : gridLayout.prefHeight(this)
                    Row {
                    anchors.fill: parent
                    Image { source: "./assets/android-contact.png"; anchors.verticalCenter: parent.verticalCenter; width: parent.width * 0.3; height:parent.height * 0.3; fillMode: Image.PreserveAspectFit;}
                    Image { source: "./assets/close-round.png"; anchors.verticalCenter: parent.verticalCenter; width: parent.width * 0.3; height:parent.height * 0.3; fillMode: Image.PreserveAspectFit}
                    Image { source: "./assets/eye.png"; anchors.verticalCenter: parent.verticalCenter; width: parent.width * 0.4; height:parent.height * 0.4; fillMode: Image.PreserveAspectFit}
                    }
                }
        }
    }
}
import QtQuick 2.6
import QtQuick.Layouts 1.3

Component {
    id: sectionHeader
    
    Rectangle {
        id: sectionRectangle
        width: root.width
        color:"white"
        height: 50
        border.color: "darkblue"
        Text {
            text: section
            anchors.centerIn: parent
            color: "black"
            font.bold: true
        }
        MouseArea{
            anchors.fill: parent
            hoverEnabled: true
            onEntered: {
                sectionRectangle.border.color = "black"
                sectionRectangle.border.width = 2
            }
            onExited: {
                sectionRectangle.border.color = "darkblue"
                sectionRectangle.border.width = 1
            }
            onClicked: {
                for(var i=0; i<listing.model.count; i++)
                {
                    //get this element from the list model
                    var contact = listing.model.get(i);
                    if(contact.name === section && contact.aVisible == false) {
                        console.log("true", contact.name, section)
                        contact.aVisible = true;
                        sectionRectangle.color = "#ddd"
                    }
                    //otherwise hide it and set it back
                    else if (contact.name === section && contact.aVisible == true) {
                        console.log("true", contact.name, section)
                        contact.aVisible = false;
                        sectionRectangle.color = "white"
                    }
                    
                    else { //if you want to close all others when selecting one
                        // contact.aVisible = false;
                    }
                }
            }
        }
    }
}
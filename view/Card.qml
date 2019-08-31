import QtQuick 2.6

Item{
    id: root
    width: 1406; height: 536
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
    Component {
        id: sectionHeader
        
        Rectangle {
            id: testRect
            width: 181
            color:"green"
            height: 50
            
            Text {
                text: name
                anchors.centerIn: parent
            }
            
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    console.log("parent clicked");
                    for(var i=0; i<contactModel.count; i++)
                    {
                        //get this element from the list model
                        var animal = contactModel.get(i);
                        //if the type of this animal, is equal to the current section
                        //and this animal is not visible,
                        //make it visible and colour it red
                        if(animal.name === section && animal.aVisible == false) {
                            animal.aVisible = true;
                            testRect.color = "red"
                        }
                        //otherwise hide it and set it back to green.
                        else if (animal.type === section && animal.aVisible == true) {
                            animal.aVisible = false;
                            testRect.color = "green"
                        }
                        
                        else {
                            animal.aVisible = false;
                            //                            testRect.color = "green" //makes everything green
                        }
                    }
                }
            }
        }
    }
    
    
    ListView {
        id: listing
        width: 181
        height: parent.height
        model: subItems
        
        //the delegate for the sub menu
        delegate: listdelegate
        
        section.property: "type"
        section.criteria: ViewSection.FullString
        //the delegate for top level animals
        section.delegate: sectionHeader
    }
    
    //the component for the sub sections
    Component {
        id: listdelegate
        
        Rectangle {
            id: menuItem
            width: 181
            //height: 55
            color: ListView.isCurrentItem ? "lightblue" : "white"
            visible: aVisible
            
            //when visible set its height
            onVisibleChanged: {
                if(visible)
                    height = 55;
                else
                    height = 0;
            }
            
            //animate the change when its expanded
            Behavior on height {
                NumberAnimation { duration: 150 }
            }
            
            Text {
                id: text
                text: name
                anchors.centerIn: parent
            }
            
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    listing.currentIndex = index;
                }
            }
        }
    }
}
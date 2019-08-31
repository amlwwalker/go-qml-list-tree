import QtQuick 2.6

Item{
    id: root
    width: 1406; height: 536
    
    ListModel {
        id: animalsModel
        ListElement { name: "Puss in Boots"; type: "Cats"; aVisible: false}
        ListElement { name: "Bengal"; type: "Cats"; aVisible: false }
        ListElement { name: "Pug"; type: "Dogs"; aVisible: false }
        ListElement { name: "German Shepherd"; type: "Dogs"; aVisible: false }
        ListElement { name: "Parrot"; type: "Birds"; aVisible: false }
    }
    
    Component {
        id: sectionHeader
        
        Rectangle {
            id: testRect
            width: 181
            color:"green"
            height: 50
            
            Text {
                text: section
                anchors.centerIn: parent
            }
            
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    console.log("parent clicked");
                    for(var i=0; i<animalsModel.count; i++)
                    {
                        //get this element from the list model
                        var animal = animalsModel.get(i);
                        //if the type of this animal, is equal to the current section
                        //and this animal is not visible,
                        //make it visible and colour it red
                        if(animal.type === section && animal.aVisible == false) {
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
        model: animalsModel
        
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
import QtQuick 2.0

ListModel {

    ListElement {
        name: "Jim Williams"
        portrait: "pics/portrait.png"
        createdAt: "12-06-2018"
        size: "16MB"
        subItems: [
          ListElement { name: "Puss in Boots"; type: "Cats"; aVisible: false},
          ListElement { name: "Bengal"; type: "Cats"; aVisible: false },
          ListElement { name: "Pug"; type: "Dogs"; aVisible: false },
          ListElement { name: "German Shepherd"; type: "Dogs"; aVisible: false },
          ListElement { name: "Parrot"; type: "Birds"; aVisible: false }
        ]

    }
    // ListElement {
    //     name: "John Brown"
    //     portrait: "pics/portrait.png"
    //     createdAt: "12-06-2018"
    //     size: "16MB"
    //     subItems: [
    //       ListElement { name: "Puss in Boots"; type: "Cats"; aVisible: false},
    //       ListElement { name: "Bengal"; type: "Cats"; aVisible: false },
    //       ListElement { name: "Pug"; type: "Dogs"; aVisible: false },
    //       ListElement { name: "German Shepherd"; type: "Dogs"; aVisible: false },
    //       ListElement { name: "Parrot"; type: "Birds"; aVisible: false }
    //     ]
    // }
    // ListElement {
    //     name: "Bill Smyth"
    //     portrait: "pics/portrait.png"
    //     createdAt: "12-06-2018"
    //     size: "16MB"
    //     subItems: [
    //       ListElement { name: "Puss in Boots"; type: "Cats"; aVisible: false},
    //       ListElement { name: "Bengal"; type: "Cats"; aVisible: false },
    //       ListElement { name: "Pug"; type: "Dogs"; aVisible: false },
    //       ListElement { name: "German Shepherd"; type: "Dogs"; aVisible: false },
    //       ListElement { name: "Parrot"; type: "Birds"; aVisible: false }
    //     ]
    // }
    // ListElement {
    //     name: "Sam Wise"
    //     portrait: "pics/portrait.png"
    //     createdAt: "12-06-2018"
    //     size: "16MB"
    //     subItems: [
    //       ListElement { name: "Puss in Boots"; type: "Cats"; aVisible: false},
    //       ListElement { name: "Bengal"; type: "Cats"; aVisible: false },
    //       ListElement { name: "Pug"; type: "Dogs"; aVisible: false },
    //       ListElement { name: "German Shepherd"; type: "Dogs"; aVisible: false },
    //       ListElement { name: "Parrot"; type: "Birds"; aVisible: false }
    //     ]
    // }
}
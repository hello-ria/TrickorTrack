//
//  infomation.swift
//  dife
//
//  Created by Ria Baxi on 2022-10-08.
//

import Foundation

struct Product: Identifiable {
    var id = UUID ()
    var name: String
    var image: String
}

var ProductList = [Product(name:"Guidlines when visiting houses", image: "candy"),
                   Product(name:"How to spot unsafe candy", image: "candy1"),
                   Product(name:"Are baked goods safe to eat", image: "candy2"),
                   Product(name:"Street crossing safety tips", image: "candy3"),
                   Product(name:"How to navigate in the dark ", image: "candy4"),
                   Product(name:"What to do in case of an emergency", image: "candy5"),]

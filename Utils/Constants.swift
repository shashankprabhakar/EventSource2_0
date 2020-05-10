//
//  Constants.swift
//  EventSource2_0
//
//  Created by Shashank Prabhakar on 28/04/2020.
//  Copyright © 2020 Shashank Prabhakar. All rights reserved.
//

import Foundation
import SwiftUI

struct Events: Identifiable {
    var id = UUID()
    var name: String
    var color: Color
    var enumVal: enumEvents
    
}


var blue_1 = Color.init(red: 138/255, green: 190/255, blue: 234/255)

var blue_2 = Color.init(red: 111/255, green: 148/255, blue: 182/255)

var blue_3 = Color.init(red: 96/255, green: 152/255, blue: 202/255)


enum enumEvents {
    case music, movies, arts, food, sports
}


struct EventsItem: Identifiable {
    var id = UUID()
    var name: String
    var ratingAverage: Double
    var numberOfRating: Int
    var imageString: String
    var cost: String
    var eventVal: enumEvents
}








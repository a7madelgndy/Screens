//
//  Dish.swift
//  Screens
//
//  Created by Ahmed El Gndy on 08/12/2024.
//

import Foundation

struct Dash {
    var name:String
    var price:Float
    var qunatity:Int
    var image:String
    var totalPrice:Float {
        return Float(qunatity)*price
    }

}


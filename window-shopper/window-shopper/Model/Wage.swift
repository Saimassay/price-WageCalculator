//
//  Wage.swift
//  window-shopper
//
//  Created by Gulnara Saimassay on 6/24/20.
//  Copyright © 2020 Gulnara Saimassay. All rights reserved.
//

import Foundation
class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int{
    return Int(ceil(price/wage))
    }
}

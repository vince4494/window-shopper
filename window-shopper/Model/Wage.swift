//
//  WAge.swift
//  window-shopper
//
//  Created by vince zipparro on 10/24/17.
//  Copyright © 2017 vince zipparro. All rights reserved.
//

import Foundation

class Wage
{
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int
    {
        //need to return INt since that is the return type declared above
        //Ceil is a function that rounds the number up
        return Int(ceil(price / wage))
    }
    
}


//
//  Tip.swift
//  Calculator
//
//  Created by Mariam El Mgharaz on 11/9/2023.
//

import Foundation
enum Tip{
    case none;
    case tenPercent;
    case fiftenPercent;
    case twentyPercent;
    case custome(value: Int)
    

var StrintValue: String{
    
    switch self {
    case .none:
        return   ""
    case .tenPercent:
        return  "10%"
    case .fiftenPercent:
        return  "15%"
    case .twentyPercent:
        return  "20%"
    case .custome(let value):
        return String(value)
    }
}

}

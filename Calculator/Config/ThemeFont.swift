//
//  ThemeFont.swift
//  Calculator
//
//  Created by Mariam El Mgharaz on 9/8/2023.
//

import UIKit

struct ThemeFont{
    static func regular(ofSize size : CGFloat) -> UIFont{
        return UIFont(name: "AvenirNext-Regular", size: size) ?? .systemFont(ofSize: size)
        
    }
    static func bold(ofSize size : CGFloat) -> UIFont{
        return UIFont(name: "AvenirNext-Bold", size: size) ?? .systemFont(ofSize: size)
        
    }
    static func demiBold(ofSize size : CGFloat) -> UIFont{
        return UIFont(name: "AvenirNext-DemiBold", size: size) ?? .systemFont(ofSize: size)
        
    }
}

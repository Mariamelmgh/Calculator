//
//  UIView+Extension.swift
//  Calculator
//
//  Created by Mariam El Mgharaz on 17/8/2023.
//

import UIKit

extension UIView {
    
    func addShadow(offset: CGSize,color: UIColor, redius: CGFloat, opacity: Float){
        layer.cornerRadius = redius
        layer.masksToBounds = false
        layer.shadowOffset = offset
        layer.shadowOpacity = opacity
        layer.shadowColor = color.cgColor
        layer.shadowRadius = redius
        
        let backgroundCGColor = backgroundColor?.cgColor
        backgroundColor = nil
        layer.backgroundColor = backgroundCGColor
    }
    func cornerRedius(redius: CGFloat){
        layer.masksToBounds = false
        layer.cornerRadius = redius
    }
    func addRoundedCorners(corners: CACornerMask, radius :CGFloat) {
        layer.cornerRadius  = radius
        layer.maskedCorners = [corners]
    }
    
}

//
//  ResultView.swift
//  Calculator
//
//  Created by Mariam El Mgharaz on 9/8/2023.
//

import Foundation
import UIKit
class ResultView: UIView {
    init(){
        super.init(frame: .zero)
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    private func layout(){
        backgroundColor = .red
    }
    
    
}

//
//  LogoView.swift
//  Calculator
//
//  Created by Mariam El Mgharaz on 9/8/2023.
//

import Foundation
import UIKit
import SwiftUI

class LogoView: UIView {
    private let image : UIImageView = {
        let view = UIImageView(image: .init(named: "icCalculatorBW"))
        view.contentMode = .scaleAspectFit
        return view;
    }()
    private let topLabel : UILabel = {
        let label = UILabel()
        let text = NSMutableAttributedString(string: "Mr TIP",
                                             attributes: [.font: ThemeFont.demiBold(ofSize: 16)])
        label.attributedText = text
        text.addAttributes([.font: ThemeFont.bold(ofSize: 25)], range: NSMakeRange(3, 3))
        return label;
    }()
    
    private let bottomLabel: UILabel = {
        LabelFactory.build(
            text: "Calculator",
            font: ThemeFont.demiBold(ofSize: 20),
            textAlignment: .left)
        
    }()
    
    private lazy var vStack:UIStackView = {
        let view = UIStackView(arrangedSubviews: [topLabel,bottomLabel])
        view.axis = .vertical
        view.spacing = -4
        return view
    }()
    private lazy var hStack : UIStackView = {
        
        let view = UIStackView(arrangedSubviews: [
            image,
            vStack
        ])
        view.axis = .horizontal
        view.spacing = 0
        view.alignment = .center
        return view
    }()
    
    init(){
        super.init(frame: .zero)
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    private func layout(){
        addSubview(hStack)
        
        hStack.snp.makeConstraints { make in
            make.top.bottom.equalToSuperview()
            make.centerX.equalToSuperview()
        }
        
        image.snp.makeConstraints { make in
            make.height.equalTo(image.snp.width)
        }
    }
    
    
}

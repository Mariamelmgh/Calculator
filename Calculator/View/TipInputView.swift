//
//  TipInputView.swift
//  Calculator
//
//  Created by Mariam El Mgharaz on 9/8/2023.
//

import Foundation
import UIKit
import SwiftUI

class TipInputView: UIView {
    init(){
        super.init(frame: .zero)
        layout()
    }
  
   
    private let headerView: HeaderView = {
       
        let view = HeaderView()
        view.configure(topText: "Choose", bottomText: "your tip")
        return view;
    }()
    
    private lazy var tenPercentTipButton: UIButton  = {
       
        let button = buildTipButton(tip: .tenPercent)
        
        return button;
        
    }()
    private lazy var fiftenPercentTipButton: UIButton  = {
       
        let button = buildTipButton(tip: .fiftenPercent)
        
        return button;
        
    }()
    private lazy var twentyPercentTipButton: UIButton  = {
       
        let button = buildTipButton(tip: .twentyPercent)
        
        return button;
        
    }()
    
    private lazy var customTipButton: UIButton  = {
       
        let button = UIButton()

        button.setTitle("Custom tip", for: .normal)
        button.titleLabel?.font = ThemeFont.bold(ofSize: 20)
        button.backgroundColor = ThemeColor.primary
        button.tintColor = .white
        button.cornerRedius(redius: 8.0)
        return button;
        
    }()
    private lazy var buttonHStack : UIStackView = {
        
        let stack = UIStackView(arrangedSubviews: [tenPercentTipButton,
                                                   fiftenPercentTipButton,
                                                   twentyPercentTipButton])
        
        stack.axis = .horizontal
        stack.distribution = .fillEqually
        stack.spacing = 16
        return stack
        
        
    }()
    
    private lazy var buttonVStack: UIStackView = {
        
        let stack = UIStackView(arrangedSubviews: [buttonHStack, customTipButton])
        
        stack.axis = .vertical
        stack.spacing = 16
        stack.distribution = .fillEqually
        
        return stack
    }()
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    private func layout(){
     
        [headerView, buttonVStack].forEach(addSubview(_:))
        
        buttonVStack.snp.makeConstraints { make in
            make.top.bottom.trailing.equalToSuperview()
        }
        
        //
        
        headerView.snp.makeConstraints { make in
            make.leading.equalToSuperview()
            make.trailing.equalTo(buttonVStack.snp.leading).offset(-24)
            make.width.equalTo(68)
            make.centerY.equalTo(buttonVStack.snp.centerY)
        }
       
        
    }
    
    private func buildTipButton(tip : Tip) -> UIButton{
        
        let button = UIButton(type: .custom)
        button.backgroundColor = ThemeColor.primary
      
        button.cornerRedius(redius: 8.0)
        
        let text = NSMutableAttributedString(string: tip.StrintValue, attributes: [
            .font: ThemeFont.bold(ofSize: 20),
            .foregroundColor : UIColor.white
            
        
        ])
        
        text.addAttributes([.font: ThemeFont.demiBold(ofSize: 14)], range: NSMakeRange(2, 1))
        
        button.setAttributedTitle(text, for: .normal)
        return button
        
    }
    
  
}


//
//  ResultView.swift
//  Calculator
//
//  Created by Mariam El Mgharaz on 9/8/2023.
//

import Foundation
import UIKit
class ResultView: UIView {
    //Lables
    private let headerLabel: UILabel = {
        LabelFactory.build(text: "Total p/person", font: ThemeFont.demiBold(ofSize: 18))
    }()
    private let amountPerPersonLabel: UILabel = {
       let label = UILabel()
        
        label.textAlignment = .center
        let text = NSMutableAttributedString(string: "$0", attributes: [.font: ThemeFont.bold(ofSize: 48)])

        text.addAttributes([.font: ThemeFont.bold(ofSize: 24)], range: NSMakeRange(0, 1))
        label.attributedText = text
        return label
    }()
    //Seperator
    private let hLineView: UIView = {
        let view = UIView()
        view.backgroundColor = ThemeColor.seperator
        return view
    }()
    
    //Horizental Stack View
    private lazy var hStack: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [AmountView(titleString: "Total bill", textAlignement: .left), UIView() ,AmountView(titleString: "Total tip", textAlignement: .right)])
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        return stackView
            
    }()
    
    //Vertical stack View
    private lazy var vStack: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [
           
            headerLabel,
            hStack,
            amountPerPersonLabel,
          // hLineView,
            hStack,
             buildSpacerView(height: 0),
           hStack
            
        ])
        
        stackView.axis = .vertical
     //   stackView.spacing = 8
        
        
        return stackView
        
    }()
    init(){
        super.init(frame: .zero)
        layout()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    private func layout(){
        backgroundColor = .white
        addSubview(vStack)
        vStack.snp.makeConstraints { make in
            make.top.equalTo(snp.top).offset(24)
            make.leading.equalTo(snp.leading).offset(24)
            make.trailing.equalTo(snp.trailing).offset(-24)
            make.bottom.equalTo(snp.bottom).offset(-24)
        }
        hStack.snp.makeConstraints { make in
            make.height.equalTo(2)
        }
        addShadow(
            offset: CGSize(width: 0, height: 3),
            color: .black,
            redius: 12.0,
            opacity: 0.1)
    }
    
    private func buildSpacerView(height: CGFloat) -> UIView{
        let view = UIView()
        view.heightAnchor.constraint(equalToConstant: height).isActive = true
        
        
        return view
    }
    
}

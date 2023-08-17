//
//  AmountView.swift
//  Calculator
//
//  Created by Mariam El Mgharaz on 17/8/2023.
//

import UIKit

class AmountView: UIView{
    let  titleString: String
    let textAlignement: NSTextAlignment
    
    private lazy var titleLable : UILabel = {
        LabelFactory.build(text: titleString, font:  ThemeFont.regular(ofSize: 18),textAlignment:textAlignement )
        
    }()
    
    private lazy var amountLabel : UILabel = {
        let label = UILabel()
        label.textAlignment = textAlignement
        label.textColor  = ThemeColor.primary
        let text = NSMutableAttributedString(
            string: "$0",
            attributes: [.font : ThemeFont.bold(ofSize: 24)])
        text.addAttributes([.font: ThemeFont.bold(ofSize: 16)], range: NSMakeRange(0, 1))
        return label
    }()

    
    private lazy var stackView : UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [titleLable, amountLabel])
        stackView.axis = .vertical
        return stackView
        
        
    }()
    
    
    init(titleString:String, textAlignement: NSTextAlignment){
        self.titleString = titleString
        self.textAlignement = textAlignement
        super.init(frame: .zero)
        layout()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func  layout(){
    //    backgroundColor = .red
        addSubview(stackView)
        stackView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    
    }
    
}


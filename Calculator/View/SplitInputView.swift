//
//  SplitInputView.swift
//  Calculator
//
//  Created by Mariam El Mgharaz on 9/8/2023.
//

import Foundation
import UIKit



class SplitInputView: UIView {
    init(){
        super.init(frame: .zero)
        layout()
    }
    
    private let headerView: HeaderView = {
        let view = HeaderView()
        view.configure(topText: "Split", bottomText: "the total")
        return view
    }()
    private lazy var decrementButton: UIButton = {
        let button = buildButton(text: "-", corners: [.layerMaxXMinYCorner, .layerMaxXMaxYCorner])
        return button;
    }()
    
    private lazy var incrementButton: UIButton = {
           
        let button = buildButton(text: "+", corners:  [.layerMinXMaxYCorner, .layerMinXMinYCorner])
        return button;
    }()
    private lazy var labelquantity: UILabel = {
        let label = LabelFactory.build(text: "1", font: ThemeFont.bold(ofSize: 20))
        label.backgroundColor = .white
        return label
    }()
    
    private lazy var hstack : UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [incrementButton, labelquantity, decrementButton])
        stackView.axis = .horizontal
        stackView.spacing = 0
        return stackView
        
    }()
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    private func layout(){
        [headerView,hstack].forEach(addSubview(_:))
        
        hstack.snp.makeConstraints { make in
            make.top.bottom.trailing.equalToSuperview()

        }
        
        [incrementButton, decrementButton].forEach { button in
            button.snp.makeConstraints { make in
                make.width.equalTo(button.snp.height)
            }
        }
        
        headerView.snp.makeConstraints { make in
            make.leading.equalToSuperview()
            make.centerY.equalTo(hstack.snp.centerY)
            make.trailing.equalTo(hstack.snp.leading)
            make.width.equalTo(68)
        }
    }
    
    private func buildButton(text: String, corners: CACornerMask) -> UIButton{
        
        let button = UIButton()
        
        
        button.setTitle(text, for: .normal)
        button.titleLabel?.font = ThemeFont.bold(ofSize: 20)
        button.addRoundedCorners(corners: corners, radius: 8.0)
        button.backgroundColor = ThemeColor.primary
        
        return button
        
    }
    
}

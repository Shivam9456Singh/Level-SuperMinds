//
//  FooterView.swift
//  DemoApp
//
//  Created by Shivam Kumar on 02/03/25.
//

import Foundation
import UIKit

class FooterView : UIView {
    
    
    let footer1Label : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Made Mindfully in 🇮🇳"
        label.textColor = .init(cgColor: CGColor(red: 91/255, green: 75/255, blue: 108/255, alpha: 1))
        label.font = .systemFont(ofSize: 16 , weight: .regular)
        
        return label
    }()
    
    let footer2Label : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Clear Mind\nBetter Performance"
        label.numberOfLines = 2
        label.textColor = .init(cgColor: CGColor(red: 91/255, green: 75/255, blue: 108/255, alpha: 1))
        label.font = .systemFont(ofSize: 35 , weight: .bold)
        
        return label
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(footer1Label)
        addSubview(footer2Label)
        
        NSLayoutConstraint.activate([
            footer1Label.topAnchor.constraint(equalTo: topAnchor),
            footer1Label.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            
            footer2Label.topAnchor.constraint(equalTo: footer1Label.bottomAnchor, constant: 20),
            footer2Label.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            footer2Label.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -20),
            footer2Label.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20),
            
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

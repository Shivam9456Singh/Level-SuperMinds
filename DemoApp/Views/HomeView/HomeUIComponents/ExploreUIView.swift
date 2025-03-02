//
//  ExploreUIView.swift
//  DemoApp
//
//  Created by Shivam Kumar on 01/03/25.
//

import Foundation
import UIKit

class ExploreUIView : UIView  {
    
    let buttonsTitleImage : [(title : String , imageName : String)] = [
        ("Meditation" , "sittingIcon"),
        ("Workout" , "bodyIcon"),
        ("Sleep" , "moonIcon"),
        ("More" , "downArrowIcon"),
    ]
    
    let horizontalStackView : UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.alignment = .fill
        stackView.spacing = 10
        stackView.distribution = .fillEqually
        return stackView
    }()
    
 
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(horizontalStackView)
        
        for item in buttonsTitleImage {
            let button = UIButton()
               var config = UIButton.Configuration.bordered()
               
               config.title = item.title
            config.image = UIImage(named: item.imageName)
               
               config.imagePlacement = .top
               
               config.baseBackgroundColor = UIColor(red: 29/255, green: 19/255, blue: 51/255, alpha: 1)
               config.baseForegroundColor = .white
               
               // Set title font size using attributedTitle
            let titleAttributes = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 10 , weight: .medium)]
               config.attributedTitle = AttributedString(item.title, attributes: AttributeContainer(titleAttributes))

               button.configuration = config
               
               horizontalStackView.addArrangedSubview(button)
        }
        
        setupUI()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupUI(){
        
        NSLayoutConstraint.activate([
            horizontalStackView.topAnchor.constraint(equalTo: topAnchor,constant: 10),
            horizontalStackView.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 10),
            horizontalStackView.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -10),
            horizontalStackView.bottomAnchor.constraint(equalTo: bottomAnchor,constant:-10),
        ])
    }
    
    
}

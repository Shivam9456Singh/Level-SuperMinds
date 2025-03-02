//
//  MeditationView.swift
//  DemoApp
//
//  Created by Shivam Kumar on 01/03/25.
//

import Foundation
import UIKit

class MeditationView : UIView {
    
    let stackView : UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    let meditationStackView : UIStackView = {
        let mediationView  = UIStackView()
        mediationView.translatesAutoresizingMaskIntoConstraints = false
        mediationView.axis = .vertical
        mediationView.alignment = .fill
        mediationView.distribution = .fillEqually
        return mediationView
    }()
    
    let meditationSubheading : UILabel = {
        let label  = UILabel()
        label.text = "Meditation Series"
        label.textColor = UIColor(cgColor: CGColor(red: 106/255, green: 108/255, blue: 250/255, alpha: 1))
        label.font = .systemFont(ofSize: 12)
        return label
    }()
    
    let meditationDesc : UILabel = {
        let label  = UILabel()
        label.text = "Ranveer Allahbadia"
        label.textColor = .white
        label.font = .systemFont(ofSize: 15)
        return label
    }()
    
    let meditationTitle : UILabel = {
        let label  = UILabel()
        label.text = "Manage your emotions"
        label.textColor = .white
        label.font = .systemFont(ofSize: 20, weight: .medium)
        label.numberOfLines = 0
        return label
    }()
    
    let meditationImageView : UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "meditationImage")
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        layer.cornerRadius = 20
        layer.borderColor = .init(red: 103/255, green: 38/255, blue: 235/255, alpha: 1)
        layer.borderWidth = 2
        addSubview(meditationStackView)
        meditationStackView.addArrangedSubview(meditationSubheading)
        meditationStackView.addArrangedSubview(meditationTitle)
        meditationStackView.addArrangedSubview(meditationDesc)
        
        addSubview(meditationImageView)
        
        setupSubView()
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupSubView(){
        NSLayoutConstraint.activate([
            meditationStackView.topAnchor.constraint(equalTo: topAnchor , constant: 10),
            meditationStackView.leadingAnchor.constraint(equalTo: leadingAnchor , constant: 10),
            meditationStackView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10),
            
            meditationImageView.centerYAnchor.constraint(equalTo: centerYAnchor),
            meditationImageView.leadingAnchor.constraint(equalTo: meditationStackView.trailingAnchor,constant: 10),
            meditationImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            meditationImageView.widthAnchor.constraint(equalToConstant: 160),
            meditationImageView.heightAnchor.constraint(equalToConstant: 120),
            
        ])
    }
}

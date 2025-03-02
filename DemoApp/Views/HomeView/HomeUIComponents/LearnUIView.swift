//
//  LearnUIView.swift
//  DemoApp
//
//  Created by Shivam Kumar on 02/03/25.
//

import Foundation

import UIKit

class LearnUIView : UIView {
    
    let yogaImageView : UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "yoga")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 20
        return imageView
    }()
    
    let yogaTitleLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "How to meditate like a monk"
        label.numberOfLines = 0
        label.textColor = .white
        label.font = .systemFont(ofSize: 16 , weight: .bold)
        return label
    }()
    
    let shareImageView : UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "shareIcon")
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(yogaImageView)
        addSubview(yogaTitleLabel)
        addSubview(shareImageView)
        backgroundColor  = .init(red: 56/255, green: 33/255, blue: 106/255, alpha: 1)
        layer.cornerRadius = 20
        
        NSLayoutConstraint.activate([
            yogaImageView.topAnchor.constraint(equalTo: topAnchor , constant: 10),
            yogaImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            yogaImageView.widthAnchor.constraint(equalToConstant: 111),
            yogaImageView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10),
            
            yogaTitleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            yogaTitleLabel.leadingAnchor.constraint(equalTo: yogaImageView.trailingAnchor, constant: 10),
            yogaTitleLabel.widthAnchor.constraint(equalToConstant: 150),
            
            shareImageView.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            shareImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            shareImageView.centerYAnchor.constraint(equalTo: centerYAnchor),
            shareImageView.widthAnchor.constraint(equalToConstant: 38),
            
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

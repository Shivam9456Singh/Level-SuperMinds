//
//  feturedUIView.swift
//  DemoApp
//
//  Created by Shivam Kumar on 02/03/25.
//

import Foundation

import UIKit

class FeaturedCollectionCell : UICollectionViewCell {
    
    static let identifier = "CustomCell"
    
    let containerView : UIView = {
        let containerView = UIView()
        containerView.translatesAutoresizingMaskIntoConstraints = false
        return containerView
    }()
    
    var cellImage : UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.opacity = 0.6
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.cornerRadius = 20
        return imageView
    }()
    
    
    let label1 : UILabel = {
        let label = UILabel()
        label.text = "Meditation Series"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        label.textColor = .init(cgColor: CGColor(red: 106/255, green: 108/255, blue: 250/255, alpha: 1))
        label.numberOfLines = 0
        return label
    }()
    
    
    let label2 : UILabel = {
        let label = UILabel()
        label.text = "Change your thought pattern"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 20, weight: .heavy)
        label.textColor = .white
        label.numberOfLines = 0
        return label
    }()
    
    
    let label3 : UILabel = {
        let label = UILabel()
        label.text = "Ranveer Allahbadia"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 16, weight: .heavy)
        label.textColor = .white
        label.numberOfLines = 0
        return label
    }()
    
    
    
    let label4 : UILabel = {
        let label = UILabel()
        label.text = "Break down your thought patterns and understand why you think the way you do to optimise your emotional well-being."
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        label.textColor = .white
        label.numberOfLines = 0
        return label
    }()
    
    let timerButton : UIButton = {
       let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.configuration = .filled()
        button.configuration?.baseForegroundColor = .white
        button.setTitle("10 Mins", for: .normal)
        button.configuration?.baseBackgroundColor = .systemGray2
        button.layer.cornerRadius = 25
        button.configuration?.cornerStyle = .capsule
        return button
    }()
    
    
    let playButton : UIButton = {
       let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.configuration = .none
        button.configuration?.baseForegroundColor = .white
        button.setImage(UIImage(named: "playIcon"), for: .normal)
        return button
    }()
    
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(containerView)
        containerView.addSubview(cellImage)
        containerView.sendSubviewToBack(cellImage)
        containerView.addSubview(label1)
        containerView.addSubview(label2)
        containerView.addSubview(label3)
        containerView.addSubview(label4)
        containerView.addSubview(timerButton)
        containerView.addSubview(playButton)
        
        
        containerView.layer.cornerRadius = 20
        containerView.layer.borderWidth = 0.7
        containerView.layer.borderColor = UIColor.gray.cgColor
        
        setupCellUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupCellUI(){
        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: contentView.topAnchor),
            containerView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            containerView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            
            cellImage.topAnchor.constraint(equalTo: containerView.topAnchor),
            cellImage.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            cellImage.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
            cellImage.bottomAnchor.constraint(equalTo: containerView.bottomAnchor),
            
            label1.topAnchor.constraint(equalTo: containerView.topAnchor , constant: 20),
            label1.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 20),
            
            label2.topAnchor.constraint(equalTo: label1.bottomAnchor),
            label2.leadingAnchor.constraint(equalTo: containerView.leadingAnchor , constant: 20),
            
            label3.topAnchor.constraint(equalTo: label2.bottomAnchor, constant: 150),
            label3.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 20),
            
            label4.topAnchor.constraint(equalTo: label3.bottomAnchor, constant: 10),
            label4.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 20),
            label4.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -20),
            
            timerButton.topAnchor.constraint(equalTo: label4.bottomAnchor, constant: 10),
            timerButton.leadingAnchor.constraint(equalTo: containerView.leadingAnchor ,constant: 10),
            timerButton.widthAnchor.constraint(equalToConstant: 111.8),
            
            playButton.topAnchor.constraint(equalTo: label4.bottomAnchor),
            playButton.trailingAnchor.constraint(equalTo: containerView.trailingAnchor , constant: -20),
            playButton.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -20)
        ])
    }
}

class FeaturedUIView : UIView {
    
    let featuredCollectionView : UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: .zero , collectionViewLayout:layout)
    
        layout.scrollDirection = .horizontal
        collectionView.collectionViewLayout = layout
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.backgroundColor = .clear
        return collectionView
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(featuredCollectionView)
        
        featuredCollectionView.delegate = self
        featuredCollectionView.dataSource = self
        featuredCollectionView.showsHorizontalScrollIndicator = false
        
        featuredCollectionView.register(FeaturedCollectionCell.self, forCellWithReuseIdentifier: FeaturedCollectionCell.identifier)
        featuredCollectionView.isPagingEnabled = true
        
        NSLayoutConstraint.activate([
            featuredCollectionView.topAnchor.constraint(equalTo: topAnchor),
            featuredCollectionView.leadingAnchor.constraint(equalTo: leadingAnchor),
            featuredCollectionView.trailingAnchor.constraint(equalTo: trailingAnchor),
            featuredCollectionView.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        if let layout = featuredCollectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.itemSize = CGSize(width: self.frame.width, height: 370)
            layout.minimumLineSpacing = 0
        }
    }
}

extension FeaturedUIView : UICollectionViewDelegate , UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: FeaturedCollectionCell.identifier, for: indexPath) as? FeaturedCollectionCell else {
            return UICollectionViewCell()
        }
        let imageName  = indexPath.item%2 == 0 ? "peaceImage" : "innerPeaceImage"
        cell.cellImage.image = UIImage(named: imageName)
        return cell
    }
 
}

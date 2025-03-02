//
//  RecommededUIView.swift
//  DemoApp
//
//  Created by Shivam Kumar on 01/03/25.
//

import Foundation

import UIKit

class CustomCollectionCell : UICollectionViewCell {
    
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
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.cornerRadius = 20
        return imageView
    }()
    
    let verticalTextStack : UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        return stackView
    }()
    
    let label1 : UILabel = {
        let label = UILabel()
        label.text = "Title"
        label.font = UIFont.systemFont(ofSize: 12, weight: .medium)
        label.textColor = .green
        label.numberOfLines = 0
        return label
    }()
    
    
    let label2 : UILabel = {
        let label = UILabel()
        label.text = "Title2"
        label.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        label.textColor = .white
        label.numberOfLines = 0
        return label
    }()
    
    
    let label3 : UILabel = {
        let label = UILabel()
        label.text = "Title3"
        label.font = UIFont.systemFont(ofSize: 12, weight: .regular)
        label.textColor = .white
        label.numberOfLines = 0
        return label
    }()
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(containerView)
        containerView.addSubview(cellImage)
        containerView.addSubview(verticalTextStack)
        verticalTextStack.addArrangedSubview(label1)
        verticalTextStack.addArrangedSubview(label2)
        verticalTextStack.addArrangedSubview(label3)
        
        setupCellUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupCellUI(){
        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: contentView.topAnchor , constant: 10),
            containerView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor , constant: 10),
            containerView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor , constant: -10),
            
            cellImage.topAnchor.constraint(equalTo: containerView.topAnchor),
            cellImage.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            cellImage.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
            cellImage.heightAnchor.constraint(equalToConstant: 160),
            
            
            verticalTextStack.topAnchor.constraint(equalTo: cellImage.bottomAnchor, constant: 2),
            verticalTextStack.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            verticalTextStack.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
        ])
    }
}

class RecommededUIView : UIView {
    
    let recommendedCollectionView : UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: .zero , collectionViewLayout:layout)
       
        layout.itemSize = CGSize(width: 160, height: 238)
        layout.scrollDirection = .horizontal
        collectionView.collectionViewLayout = layout
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.backgroundColor = .clear
        return collectionView
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(recommendedCollectionView)
        
        recommendedCollectionView.delegate = self
        recommendedCollectionView.dataSource = self
        recommendedCollectionView.showsHorizontalScrollIndicator = false
        
        recommendedCollectionView.register(CustomCollectionCell.self, forCellWithReuseIdentifier: CustomCollectionCell.identifier)
        
        NSLayoutConstraint.activate([
            recommendedCollectionView.topAnchor.constraint(equalTo: topAnchor),
            recommendedCollectionView.leadingAnchor.constraint(equalTo: leadingAnchor),
            recommendedCollectionView.trailingAnchor.constraint(equalTo: trailingAnchor),
            recommendedCollectionView.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


extension RecommededUIView : UICollectionViewDelegate , UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CustomCollectionCell.identifier, for: indexPath) as? CustomCollectionCell else {
            return UICollectionViewCell()
        }
        let imageName  = indexPath.item%2 == 0 ? "card1Image" : "card2Image"
        cell.cellImage.image = UIImage(named: imageName)
        cell.label1.text = "Meditation 10 Mins"
        cell.label2.text = "Freedom Series"
        cell.label3.text = "Akhil Aryan"
        
        return cell
    }
}

//
//  HomeView.swift
//  DemoApp
//
//  Created by Shivam Kumar on 27/02/25.
//

import Foundation
import UIKit

class HomeView : UIView {
    let parentScrollView : UIScrollView  = {
        let scrollView = UIScrollView()
        scrollView.scrollIndicatorInsets = .zero
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.showsVerticalScrollIndicator = false
        return scrollView
    }()
    
    let parentContainerView : UIView = {
        let containerView = UIView()
        containerView.translatesAutoresizingMaskIntoConstraints = false
        
        return containerView
    }()
    
    let topImageView : UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "homeTopImage")
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    let titleLabel : UILabel = {
        let label = UILabel()
        label.text = "Get Started"
        label.textColor = .white
        label.font = .systemFont(ofSize: 20 , weight: .heavy)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    let medtitaionSeriesView  = MeditationView()
    let exploreView = ExploreUIView()
    
    
    let exploreLabel : UILabel =  {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Explore"
        label.textColor = .white
        label.font = .systemFont(ofSize: 20 ,weight: .heavy)
        return label
    }()
    
    let recommededLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Recommeded For You"
        label.textColor = .white
        label.font = .systemFont(ofSize: 20 , weight: .heavy)
        return label
    }()
    
    let recentLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Recents"
        label.textColor = .white
        label.font = .systemFont(ofSize: 20 , weight: .heavy)
        return label
    }()
    
    let seeAllRecentLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "See All"
        label.textColor = .white
        label.font = .systemFont(ofSize: 13 , weight: .semibold)
        return label
    }()
    
    let learnLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Learn"
        label.textColor = .white
        label.font = .systemFont(ofSize: 20 , weight: .heavy)
        return label
    }()
    
    
    let featuredLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Featured"
        label.textColor = .white
        label.font = .systemFont(ofSize: 20 , weight: .heavy)
        return label
    }()
    
    let footerView = FooterView()
    
    
    let featuredView  = FeaturedUIView()
    let learnUIView = LearnUIView()
    let recommendedCollectionView = RecommededUIView()
    let recentCollectionView = RecentUIView()
    
    
    let button1 = CustomButtonView(imageName: "button1Image", buttonText: "2")
    let button2 = CustomButtonView(imageName: "Gold2", buttonText: "Rank")
    let button3 = CustomButtonView(imageName: "Gift", buttonText: "")
   
   
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(parentScrollView)
        parentScrollView.addSubview(parentContainerView)
        parentContainerView.addSubview(topImageView)
        parentContainerView.addSubview(medtitaionSeriesView)
        parentContainerView.addSubview(exploreLabel)
        parentContainerView.addSubview(exploreView)
        parentContainerView.addSubview(recommededLabel)
        parentContainerView.addSubview(recommendedCollectionView)
        parentContainerView.addSubview(recentCollectionView)
        parentContainerView.addSubview(recentLabel)
        parentContainerView.addSubview(seeAllRecentLabel)
        parentContainerView.addSubview(learnLabel)
        parentContainerView.addSubview(learnUIView)
        parentContainerView.addSubview(featuredLabel)
        parentContainerView.addSubview(featuredView)
        parentContainerView.addSubview(footerView)
        
        learnUIView.translatesAutoresizingMaskIntoConstraints = false
        recommendedCollectionView.translatesAutoresizingMaskIntoConstraints = false
        recentCollectionView.translatesAutoresizingMaskIntoConstraints = false
        featuredView.translatesAutoresizingMaskIntoConstraints = false
        footerView.translatesAutoresizingMaskIntoConstraints = false

        
        medtitaionSeriesView.translatesAutoresizingMaskIntoConstraints = false
        exploreView.translatesAutoresizingMaskIntoConstraints = false
        
        topImageView.addSubview(button1)
        topImageView.addSubview(button2)
        topImageView.addSubview(button3)
        
        parentContainerView.addSubview(titleLabel)
        
        button1.translatesAutoresizingMaskIntoConstraints = false
        button2.translatesAutoresizingMaskIntoConstraints = false
        button3.translatesAutoresizingMaskIntoConstraints = false
        medtitaionSeriesView.translatesAutoresizingMaskIntoConstraints = false
        
        button1.layer.cornerRadius = 20
        button2.layer.cornerRadius = 20
        button3.layer.cornerRadius = 20
        
        
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupUI(){
        NSLayoutConstraint.activate([
            
            parentScrollView.topAnchor.constraint(equalTo: topAnchor),
            parentScrollView.leadingAnchor.constraint(equalTo: leadingAnchor),
            parentScrollView.trailingAnchor.constraint(equalTo: trailingAnchor),
            parentScrollView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            parentContainerView.topAnchor.constraint(equalTo: parentScrollView.topAnchor),
            parentContainerView.leadingAnchor.constraint(equalTo: leadingAnchor),
            parentContainerView.trailingAnchor.constraint(equalTo: trailingAnchor),
            parentContainerView.bottomAnchor.constraint(equalTo: parentScrollView.bottomAnchor),
            
            topImageView.topAnchor.constraint(equalTo: parentContainerView.topAnchor),
            topImageView.leadingAnchor.constraint(equalTo: parentContainerView.leadingAnchor),
            topImageView.trailingAnchor.constraint(equalTo: parentContainerView.trailingAnchor),
            
            button1.topAnchor.constraint(equalTo: topImageView.topAnchor , constant: 50),
            button1.leadingAnchor.constraint(equalTo: topImageView.leadingAnchor, constant: 10),
            button1.widthAnchor.constraint(equalToConstant: 64),
            button1.heightAnchor.constraint(equalToConstant: 44),
            
            button2.topAnchor.constraint(equalTo: topImageView.topAnchor , constant: 50),
            button2.leadingAnchor.constraint(equalTo: button1.trailingAnchor , constant: 20),
            button2.widthAnchor.constraint(equalToConstant: 64.9),
            button2.heightAnchor.constraint(equalToConstant: 44),
            
            button3.topAnchor.constraint(equalTo: topImageView.topAnchor,constant: 50),
            button3.trailingAnchor.constraint(equalTo: topImageView.trailingAnchor, constant: -10),
            button3.widthAnchor.constraint(equalToConstant: 64),
            button3.heightAnchor.constraint(equalToConstant: 44),
            
            titleLabel.topAnchor.constraint(equalTo: topImageView.bottomAnchor, constant: 2),
            titleLabel.leadingAnchor.constraint(equalTo: parentContainerView.leadingAnchor, constant: 20),
            
            medtitaionSeriesView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor , constant: 20),
            medtitaionSeriesView.leadingAnchor.constraint(equalTo: parentContainerView.leadingAnchor, constant: 10),
            medtitaionSeriesView.trailingAnchor.constraint(equalTo: parentContainerView.trailingAnchor, constant: -10),
            medtitaionSeriesView.heightAnchor.constraint(equalToConstant: 160),
            
            
            exploreLabel.topAnchor.constraint(equalTo: medtitaionSeriesView.bottomAnchor, constant: 20),
            exploreLabel.leadingAnchor.constraint(equalTo: parentContainerView.leadingAnchor, constant: 20),
            
            exploreView.topAnchor.constraint(equalTo: exploreLabel.bottomAnchor, constant: 20),
            exploreView.leadingAnchor.constraint(equalTo: parentContainerView.leadingAnchor, constant: 10),
            exploreView.trailingAnchor.constraint(equalTo: parentContainerView.trailingAnchor, constant: -10),
            
            recommededLabel.topAnchor.constraint(equalTo: exploreView.bottomAnchor, constant: 20),
            recommededLabel.leadingAnchor.constraint(equalTo: parentContainerView.leadingAnchor, constant: 10),
           
            
            recommendedCollectionView.topAnchor.constraint(equalTo: recommededLabel.bottomAnchor, constant: 20),
            recommendedCollectionView.leadingAnchor.constraint(equalTo: parentContainerView.leadingAnchor),
            recommendedCollectionView.trailingAnchor.constraint(equalTo: parentContainerView.trailingAnchor),
            recommendedCollectionView.heightAnchor.constraint(equalToConstant: 238),
            
            recentLabel.topAnchor.constraint(equalTo: recommendedCollectionView.bottomAnchor, constant: 20),
            recentLabel.leadingAnchor.constraint(equalTo: parentContainerView.leadingAnchor, constant: 10),
            
            seeAllRecentLabel.topAnchor.constraint(equalTo: recommendedCollectionView.bottomAnchor, constant: 20),
            seeAllRecentLabel.trailingAnchor.constraint(equalTo: parentContainerView.trailingAnchor , constant: -20),
            
            recentCollectionView.topAnchor.constraint(equalTo: recentLabel.bottomAnchor , constant: 20),
            recentCollectionView.leadingAnchor.constraint(equalTo: parentContainerView.leadingAnchor),
            recentCollectionView.trailingAnchor.constraint(equalTo: parentContainerView.trailingAnchor),
            recentCollectionView.heightAnchor.constraint(equalToConstant: 238),
          
            learnLabel.topAnchor.constraint(equalTo: recentCollectionView.bottomAnchor, constant: 20),
            learnLabel.leadingAnchor.constraint(equalTo: parentContainerView.leadingAnchor, constant: 10),
            
            learnUIView.topAnchor.constraint(equalTo: learnLabel.bottomAnchor,constant: 20),
            learnUIView.leadingAnchor.constraint(equalTo: parentContainerView.leadingAnchor,constant: 10),
            learnUIView.trailingAnchor.constraint(equalTo: parentContainerView.trailingAnchor, constant: -10),
            learnUIView.heightAnchor.constraint(equalToConstant: 97),
            
            
            featuredLabel.topAnchor.constraint(equalTo: learnUIView.bottomAnchor, constant: 20),
            featuredLabel.leadingAnchor.constraint(equalTo: parentContainerView.leadingAnchor, constant: 10),
            
            featuredView.topAnchor.constraint(equalTo: featuredLabel.bottomAnchor, constant: 20),
            featuredView.centerXAnchor.constraint(equalTo: parentContainerView.centerXAnchor),
            featuredView.heightAnchor.constraint(equalToConstant: 370),
            featuredView.widthAnchor.constraint(equalToConstant: 370),
            
            footerView.topAnchor.constraint(equalTo: featuredView.bottomAnchor, constant: 150),
            footerView.leadingAnchor.constraint(equalTo: parentContainerView.leadingAnchor),
            footerView.trailingAnchor.constraint(equalTo: parentContainerView.trailingAnchor),
            footerView.bottomAnchor.constraint(equalTo: parentContainerView.bottomAnchor),
           
            
        ])
    }
}

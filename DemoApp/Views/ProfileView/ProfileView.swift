//
//  ProfileView.swift
//  DemoApp
//
//  Created by Shivam Kumar on 27/02/25.
//

import Foundation

import UIKit

class ProfileView : UIView {
    
    let profileScrollView : UIScrollView  = {
        let scrollView = UIScrollView()
        scrollView.scrollIndicatorInsets = .zero
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.showsVerticalScrollIndicator = false
        return scrollView
    }()
    
    let profileContainerView : UIView = {
        let containerView = UIView()
        containerView.translatesAutoresizingMaskIntoConstraints = false
        return containerView
    }()
  
    let profileTemplateView = ProfileTemplateView()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(profileScrollView)
        profileScrollView.addSubview(profileContainerView)
        
        profileContainerView.addSubview(profileTemplateView)
        
        
        profileTemplateView.translatesAutoresizingMaskIntoConstraints = false
        
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupUI(){
        NSLayoutConstraint.activate([
            profileScrollView.topAnchor.constraint(equalTo: topAnchor),
            profileScrollView.leadingAnchor.constraint(equalTo: leadingAnchor),
            profileScrollView.trailingAnchor.constraint(equalTo: trailingAnchor),
            profileScrollView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            profileContainerView.topAnchor.constraint(equalTo: profileScrollView.topAnchor),
            profileContainerView.leadingAnchor.constraint(equalTo: leadingAnchor),
            profileContainerView.trailingAnchor.constraint(equalTo: trailingAnchor),
            profileContainerView.bottomAnchor.constraint(equalTo: profileScrollView.bottomAnchor),
            
            profileTemplateView.topAnchor.constraint(equalTo: profileContainerView.topAnchor),
            profileTemplateView.leadingAnchor.constraint(equalTo: profileContainerView.leadingAnchor),
            profileTemplateView.trailingAnchor.constraint(equalTo: profileContainerView.trailingAnchor),
            
        ])
    }
}

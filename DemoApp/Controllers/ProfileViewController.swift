//
//  ProfileViewController.swift
//  DemoApp
//
//  Created by Shivam Kumar on 28/02/25.
//

import Foundation

import UIKit

class ProfileViewController : UIViewController {

    let profileView = ProfileView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(profileView)
        view.backgroundColor = UIColor(named: "themeColor")
        profileView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            profileView.topAnchor.constraint(equalTo: view.topAnchor),
            profileView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            profileView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            profileView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
    }
}

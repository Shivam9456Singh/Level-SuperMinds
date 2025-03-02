//
//  ViewController.swift
//  DemoApp
//
//  Created by Shivam Kumar on 27/02/25.
//

import UIKit

class HomeViewController: UIViewController {
    
    let homeView = HomeView()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupView()
        view.backgroundColor = UIColor(named: "themeColor")
    }
    
    
    private func setupView(){
        view.addSubview(homeView)
        homeView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            homeView.topAnchor.constraint(equalTo: view.topAnchor),
            homeView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            homeView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            homeView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
        
    }
    
    
}


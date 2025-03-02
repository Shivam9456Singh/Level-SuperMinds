//
//  TabBarController.swift
//  DemoApp
//
//  Created by Shivam Kumar on 27/02/25.
//

import Foundation

import UIKit

class TabBarController : UITabBarController , UITabBarControllerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        
        let vc1 = UINavigationController(rootViewController: HomeViewController())
        let vc2 = UINavigationController(rootViewController: SearchViewController())
        let vc3 = UINavigationController(rootViewController: ProfileViewController())
        
        vc1.tabBarItem.image = UIImage(systemName: "house")
        vc2.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        vc3.tabBarItem.image = UIImage(systemName: "person")
        
        vc1.title = "Home"
        vc2.title = "Search"
        vc3.title = "You"
        
        
        tabBar.tintColor = .white
        tabBar.unselectedItemTintColor = UIColor.white.withAlphaComponent(0.5)
        
        
        setViewControllers([vc1, vc2, vc3], animated: true)
        
        tabBar.backgroundColor = UIColor(cgColor: CGColor(red: 15/255, green: 6/255, blue: 34/255, alpha: 1))
        
    }
                
                
    
}

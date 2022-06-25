//
//  ViewController.swift
//  Netflix Clone
//
//  Created by Dmitry Lazarev on 5/29/22.
//

import UIKit

class MainTabBarViewController: UITabBarController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        let vc1 = UINavigationController(rootViewController: HomeViewController())
        let vc2 = UINavigationController(rootViewController: DownloadsViewController())
        let vc3 = UINavigationController(rootViewController: UpcomingViewController())
        let vc4 = UINavigationController(rootViewController: SearchViewController())
        
        vc1.tabBarItem.image = UIImage(systemName: "house")
        vc2.tabBarItem.image = UIImage(systemName: "play.circle")
        vc3.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        vc4.tabBarItem.image = UIImage(systemName: "arrow.down.to.line")
        
        vc1.title = "Home"
        vc2.title = "Coming Soon"
        vc3.title = "Top Search"
        vc4.title = "Downloads"
        
        tabBar.tintColor = .white
        
        setViewControllers([vc1, vc2, vc3, vc4], animated: true)
    }
    
    
}


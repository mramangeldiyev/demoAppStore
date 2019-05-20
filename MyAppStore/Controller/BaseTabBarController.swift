//
//  BaseTabBarController.swift
//  MyAppStore
//
//  Created by Nury on 4/21/19.
//  Copyright © 2019 Nury. All rights reserved.
//

import UIKit

class BaseTabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let todayController = UIViewController()
//        todayController.view.backgroundColor = .white
//        todayController.navigationItem.title = "Today"
//        //        redViewController.tabBarItem.title = "RED"
//        let todayNavController = UINavigationController(rootViewController: todayController)
//        todayNavController.tabBarItem.title = "Today"
//        todayNavController.tabBarItem.image = #imageLiteral(resourceName: "today_icon")
//        todayNavController.navigationBar.prefersLargeTitles = true
        
        
//        let redViewController = UIViewController()
//        redViewController.view.backgroundColor = .white
//        redViewController.navigationItem.title = "Apps"
////        redViewController.tabBarItem.title = "RED"
//        let redNavController = UINavigationController(rootViewController: redViewController)
//        redNavController.tabBarItem.title = "Apps"
//        redNavController.tabBarItem.image = #imageLiteral(resourceName: "apps")
//        redNavController.navigationBar.prefersLargeTitles = true
        
//        let blueViewController = UIViewController()
//        blueViewController.view.backgroundColor = .white
//        blueViewController.navigationItem.title = "Search"
////        blueViewController.tabBarItem.title = "BLUE"
//        let blueNavController = UINavigationController(rootViewController: blueViewController)
//        blueNavController.tabBarItem.title = "Search"
//        blueNavController.tabBarItem.image = UIImage(named: "search")
//        blueNavController.navigationBar.prefersLargeTitles = true
        
        viewControllers = [
//            redViewController,
 //            blueViewController,
            createNavController(viewController: UIViewController(), title: "Today", imageName: "today_icon"),
            createNavController(viewController: UIViewController(), title: "Apps", imageName: "apps"),
            createNavController(viewController: UIViewController(), title: "Search", imageName: "search"),
        ]
    }
    
    fileprivate func createNavController(viewController: UIViewController, title: String, imageName: String) -> UIViewController {
        let navController = UINavigationController(rootViewController: viewController)
        navController.navigationBar.prefersLargeTitles = true
        viewController.navigationItem.title = title
        viewController.view.backgroundColor = .white
        navController.tabBarItem.title = title
        navController.tabBarItem.image = UIImage(named: imageName)
        return navController
    }
}

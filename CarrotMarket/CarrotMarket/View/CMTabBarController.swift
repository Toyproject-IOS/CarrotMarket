//
//  CMTabBarController.swift
//  CarrotMarket
//
//  Created by 장일규 on 2022/03/14.
//

import UIKit

class CMTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let firstNC = UINavigationController.init(rootViewController: CarrotViewController())
        self.viewControllers = [firstNC]
        let firstTabBarItem = UITabBarItem(title: "home", image: UIImage(named: "home"), tag: 0)
        firstNC.tabBarItem = firstTabBarItem
        
        setUITabBar()
    }
    
    func setUITabBar() {
        UITabBar.clearShadow()
        tabBar.layer.applySketchShadow()
    }
}

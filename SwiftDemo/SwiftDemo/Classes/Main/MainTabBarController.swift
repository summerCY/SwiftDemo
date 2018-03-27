//
//  MainTabBarController.swift
//  SwiftDemo
//
//  Created by 咩咩咩 on 2018/3/26.
//  Copyright © 2018年 cyly. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.delegate = self as? UITabBarControllerDelegate
        
        loadController()
    }

    fileprivate func loadController() {
        
        let homeV = HomeViewController()
        let classV = ClassifyViewController()
        let folloeV = FollowViewController()
        let fishV = FishViewController()
        let meV = MeViewController()
        
        setupChildViewController(childVc: homeV, title: "首页", imageName: "tabHome", selectedImageName: "tabHomeHL")
        setupChildViewController(childVc: classV, title: "分类", imageName: "tabLiving", selectedImageName: "tabLivingHL")
        setupChildViewController(childVc: folloeV, title: "关注", imageName: "tabFocus", selectedImageName: "tabFocusHL")
        setupChildViewController(childVc: fishV, title: "鱼吧", imageName: "tabDiscovery", selectedImageName: "tabDiscoveryHL")
        setupChildViewController(childVc: meV, title: "我的", imageName: "tabMine", selectedImageName: "tabMineHL")
    }
    
   

}


extension MainTabBarController {
    func setupChildViewController(childVc : UIViewController,title :  NSString,imageName : NSString,selectedImageName : NSString) {
        
        
        childVc.title = title as String
        childVc.tabBarItem.image = UIImage.init(named: imageName as String)
        childVc.tabBarItem.selectedImage = UIImage.init(named: selectedImageName as String)?.withRenderingMode(.alwaysOriginal)
        childVc.tabBarItem.setTitleTextAttributes([NSAttributedStringKey.foregroundColor : UIColor.orange], for: .selected)
//        childVc.tabBarItem.selectedImage = UIImage()
        
        let vc = BaseNavigationController(rootViewController: childVc)
        
        self.addChildViewController(vc)
    }
}



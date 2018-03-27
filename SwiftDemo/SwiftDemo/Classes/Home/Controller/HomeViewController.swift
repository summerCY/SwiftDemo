//
//  HomeViewController.swift
//  SwiftDemo
//
//  Created by 咩咩咩 on 2018/3/26.
//  Copyright © 2018年 cyly. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    // MARK:- 懒加载属性
    fileprivate lazy var pageController : PageController = {[weak self] in
        let vcClasses: [UIViewController.Type] = [HomeListViewController.self, HomeListViewController.self,HomeListViewController.self]
        let titles = ["视频", "直播","发现"]
        let pageController = PageController(vcClasses: vcClasses, theirTitles: titles)
        pageController.pageAnimatable = true
        pageController.menuViewStyle = MenuViewStyle.line
        pageController.bounces = true
        pageController.menuHeight = 44
        pageController.titleSizeSelected = 15
                pageController.values = ["Hello", "I'm Mark","Hello"] // pass values
                pageController.keys = ["type", "text","Hello"] // keys
                pageController.title = "Test"
        pageController.menuBGColor = .clear
        pageController.selectedIndex = 1
        //        pageController.progressColor = .blackColor()
        //        pageController.viewFrame = CGRect(x: 50, y: 100, width: 320, height: 500)
        //        pageController.itemsWidths = [100, 50]
        //        pageController.itemsMargins = [50, 10, 100]
        //        pageController.titleSizeNormal = 12
        //        pageController.titleSizeSelected = 14
        //        pageController.titleColorNormal = UIColor.brownColor()
        //        pageController.titleColorSelected = UIColor.blackColor()
        return pageController
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.white

        // 1.设置左侧的Item
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(imageName: "logo")
        
//        view.addSubview(pageController)
//        self.view.addSubview(pageController.view)
        
    }


    

}

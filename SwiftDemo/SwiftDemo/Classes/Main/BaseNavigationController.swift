//
//  BaseNavigationController.swift
//  SwiftDemo
//
//  Created by 咩咩咩 on 2018/3/26.
//  Copyright © 2018年 cyly. All rights reserved.
//

import UIKit

class BaseNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
        self.navigationController?.navigationBar.titleTextAttributes =
            [NSAttributedStringKey.foregroundColor: UIColor.white,NSAttributedStringKey.font:UIFont.fontNames(forFamilyName: "PingFang-SC-Regular")]

    }
    

}









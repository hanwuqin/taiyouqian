//
//  TabBarViewController.swift
//  taiyouqian
//
//  Created by 郭二强 on 15/12/28.
//  Copyright © 2015年 郭二强. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let licaiView = UINavigationController(rootViewController: licaiViewController());
        licaiView.navigationBar.barTintColor = ColorHexString(TABBAR_COLOR);
        licaiView.navigationBar.translucent = false;
        let ziChanView = UINavigationController(rootViewController: ziChanViewController());
        ziChanView.navigationBar.barTintColor = ColorHexString(TABBAR_COLOR);
        ziChanView.navigationBar.translucent = false;
        
        let huoDongView = UINavigationController(rootViewController: huoDongViewController());
        huoDongView.navigationBar.barTintColor = ColorHexString(TABBAR_COLOR);
        huoDongView.navigationBar.translucent = false;
        
        let myView = UINavigationController(rootViewController: myViewController());
        myView.navigationBar.barTintColor = ColorHexString(TABBAR_COLOR);
        myView.navigationBar.translucent = false;
        
        licaiView.tabBarItem = UITabBarItem(title: "理财", image: UIImage(named: "TabbarIcon_Sel0"), tag: 1);
        ziChanView.tabBarItem = UITabBarItem(title: "资产", image: UIImage(named: "TabbarIcon_Sel1"), tag: 2);
        huoDongView.tabBarItem = UITabBarItem(title: "发现", image: UIImage(named: "TabbarIcon_Sel2"), tag: 3);
        myView.tabBarItem = UITabBarItem(title: "我的", image: UIImage(named: "TabbarIcon_Sel3"), tag: 4);
        
        let NavController:[UINavigationController] = [licaiView,ziChanView,huoDongView,myView];
        self.tabBar.tintColor = ColorHexString(NAV_COLOR);
        self.viewControllers = NavController;
        
    }
    
   

}

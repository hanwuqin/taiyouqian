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
        NSThread.sleepForTimeInterval(3.0)//延长3秒
        let licaiView = UINavigationController(rootViewController: LicaiViewController());
        
        setNavBarStyle(licaiView);
        
        let ziChanView = UINavigationController(rootViewController: ZiChanViewController());
        
        setNavBarStyle(ziChanView);
        
        let huoDongView = UINavigationController(rootViewController: HuoDongViewController());
        setNavBarStyle(huoDongView);
        
        let myView = UINavigationController(rootViewController: MyViewController());
        
        setNavBarStyle(myView);
        
        licaiView.tabBarItem = UITabBarItem(title: "理财", image: UIImage(named: "TabbarIcon_Sel0"), tag: 1);
        ziChanView.tabBarItem = UITabBarItem(title: "资产", image: UIImage(named: "TabbarIcon_Sel1"), tag: 2);
        huoDongView.tabBarItem = UITabBarItem(title: "发现", image: UIImage(named: "TabbarIcon_Sel2"), tag: 3);
        myView.tabBarItem = UITabBarItem(title: "我的", image: UIImage(named: "TabbarIcon_Sel3"), tag: 4);
        
        let NavController:[UINavigationController] = [licaiView,ziChanView,huoDongView,myView];
        self.tabBar.tintColor = ColorHexString(APP_BG_C_3);
        self.viewControllers = NavController;
        
    }
    //设置导航的颜色
    func setNavBarStyle(NavView:UINavigationController){
        NavView.navigationBar.barTintColor = ColorHexString(APP_BG_C_3);
        NavView.navigationBar.translucent = false;
        NavView.navigationBar.barStyle = UIBarStyle.BlackOpaque;
        NavView.navigationBar.tintColor = UIColor.whiteColor();
    }
    
   

}

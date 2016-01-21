//
//  commonView.swift
//  taiyouqian
//
//  Created by 郭二强 on 15/12/15.
//  Copyright © 2015年 郭二强. All rights reserved.
//

import UIKit
class BaseViewController:UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController!.navigationBar.barStyle = UIBarStyle.BlackOpaque;
        self.navigationController!.navigationBar.barTintColor = ColorHexString(APP_BG_C_6);
        self.tabBarController!.tabBar.tintColor = ColorHexString(APP_BG_C_3);
        self.navigationController!.navigationBar.translucent = false;
        self.view.backgroundColor = UIColor.whiteColor();
    }
    
    func fail(error:String){
        self.noticeError(error);
    }
    //设置导航控制器左侧按钮
    func setNavLetButton(navItem:UINavigationItem,target:AnyObject,action:Selector){
        let Image = UIImage(named: "backArrowBlue")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        let leftBtn = UIBarButtonItem(image: Image, style: UIBarButtonItemStyle.Plain, target: target, action: action);
        navItem.leftBarButtonItem = leftBtn;
    }
    
    //设置导航控制器左侧按钮
    func setNavLetButton(navItem:UINavigationItem){
        let Image = UIImage(named: "backArrowBlue")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        let leftBtn = UIBarButtonItem(image: Image, style: UIBarButtonItemStyle.Plain, target: self, action: Selector("popViewController"));
        navItem.leftBarButtonItem = leftBtn;
    }
    
    
    //返回上一个界面
    func popViewController(){
         self.clearAllNotice();
        self.navigationController?.popToRootViewControllerAnimated(true);
    }
    
    //PUSH下一个界面
    func PushViewController(VC:UIViewController){
        self.hidesBottomBarWhenPushed = true;
        self.navigationController?.pushViewController(VC, animated: true);
        self.HideBottomView();

    }
    
    //push WEBView 一个页面
    func PushWebViewController(url:String,title:String){
        let webViewVC = WebViewViewController();
        webViewVC.webUrl = url;
        webViewVC.webTitle = title;
        self.hidesBottomBarWhenPushed = true;
        self.navigationController?.pushViewController(webViewVC, animated: true);
        self.HideBottomView();
    }
    
    //判断是否隐藏底部
    func HideBottomView(){
        if(self.navigationController?.viewControllers.count == 2){
            self.hidesBottomBarWhenPushed = false;
        }

    }
    
    
    
    

    
}

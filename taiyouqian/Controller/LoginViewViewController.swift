//
//  loginViewViewController.swift
//  taiyouqian
//
//  Created by 郭二强 on 16/1/4.
//  Copyright © 2016年 郭二强. All rights reserved.
//

import UIKit

class LoginViewViewController: BaseViewController {
    
    //视图
    let loginView = LoginView();
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "登录";
        loginView.BaseView = self.view;
        loginView.initView();
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
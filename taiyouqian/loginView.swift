//
//  loginView.swift
//  taiyouqian
//
//  Created by 郭二强 on 16/1/4.
//  Copyright © 2016年 郭二强. All rights reserved.
//

import UIKit

class LoginView{
    
    var lableView:UIView?;
    var BaseView:UIView?;
    func initView(View:UIView){
        self.BaseView = View;
        self.BaseView!.backgroundColor = ColorHexString("#f4f4ef");
        InitTopView();
    }
    //定义顶部视图
    func InitTopView(){
        self.lableView = UIView();
        self.BaseView?.addSubview(self.lableView!);
        self.lableView?.backgroundColor = UIColor.whiteColor();
        self.lableView?.snp_makeConstraints(closure: { (make) -> Void in
            make.top.equalTo(15)
            make.height.equalTo(81)
            make.left.right.equalTo(0);
        })
    }
}

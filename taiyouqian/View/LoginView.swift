//
//  loginView.swift
//  taiyouqian
//
//  Created by 郭二强 on 16/1/4.
//  Copyright © 2016年 郭二强. All rights reserved.
//

import UIKit

class LoginView:UIView{
    
    var lableView:UIView = UIView();
    var BaseView:UIView!;
    var lable1:UILabel!;
    var lable2:UILabel!;
    var line:UIView!;
    var Phone:UITextField = UITextField();
    var PassWd:UITextField = UITextField();
    var loginButton:UIButton = UIButton();
    var registerButton:UIButton = UIButton();
    var forgetButton:UIButton = UIButton();
    
    func initView(){
        self.BaseView.backgroundColor = ColorHexString(APP_BG_C_4);
        self.BaseView.addSubview(self.lableView);
        InitTopView();
        initBottomView();
        self.setAutoLayout();
        //self.bindAction();
    }
    //定义顶部视图
    func InitTopView(){
        self.lableView.backgroundColor = UIColor.whiteColor();
        lable1 = UILabel();
        lable2 = UILabel();
        line = UIView();
        self.lableView.addSubview(line);
        self.lableView.addSubview(lable1);
        self.lableView.addSubview(lable2);
        self.lableView.addSubview(self.Phone);
        self.lableView.addSubview(self.PassWd);
        
        lable1.text = "手机号码：";
        lable2.text = "登录密码：";
        Phone.placeholder = "请输入手机号";
        PassWd.placeholder = "请输入密码";

        Phone.clearButtonMode = UITextFieldViewMode.WhileEditing;
        PassWd.clearButtonMode = UITextFieldViewMode.WhileEditing;
        lable1.font = Font_Size_16;
        lable2.font = Font_Size_16;
        Phone.font = Font_Size_16;
        PassWd.font = Font_Size_16;
        
        line.backgroundColor = ColorHexString(APP_BG_C_5);
        

        
    }
    //底部视图
    func initBottomView(){
        
        self.BaseView.addSubview(loginButton);
        self.BaseView.addSubview(registerButton);
        self.BaseView.addSubview(forgetButton);
        
        loginButton.backgroundColor = ColorHexString(APP_BTN_BG_C_1);
        loginButton.layer.cornerRadius = 5;
        loginButton.setTitle("登录", forState: .Normal);
        registerButton.setTitle("免费注册", forState: .Normal);
        forgetButton.setTitle("忘记密码", forState: .Normal);
        
        loginButton.titleLabel?.font = Font_Size_16;
        registerButton.titleLabel?.font = Font_Size_16;
        forgetButton.titleLabel?.font = Font_Size_16;
        
        registerButton.setTitleColor(ColorHexString(APP_FONT_C_2), forState: .Normal);
        forgetButton.setTitleColor(ColorHexString(APP_FONT_C_2), forState: .Normal);

    }
    
    
    func setAutoLayout(){
        
        self.lableView.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(15 * SCALE_Y)
            make.height.equalTo(96 * SCALE_Y)
            make.left.right.equalTo(0);
        }
        
        lable1.snp_makeConstraints { (make) -> Void in
            make.left.equalTo(15 * SCALE_X);
            make.top.equalTo(16 * SCALE_Y);
        }
        
        Phone.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(15 * SCALE_Y);
            make.left.equalTo(lable1.snp_right).offset(8 * SCALE_X);
            make.width.greaterThanOrEqualTo(200 * SCALE_X)
            make.right.equalTo(-10 * SCALE_X);
            
        }
        
        line.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(lable1.snp_bottom).offset(15 * SCALE_Y);
            make.left.equalTo(15 * SCALE_X);
            make.right.equalTo(0);
            make.height.equalTo(1);
        }
        lable2.snp_makeConstraints { (make) -> Void in
            make.left.equalTo(15 * SCALE_Y);
            make.top.equalTo(line.snp_bottom).offset(16 * SCALE_Y);
        }
        PassWd.snp_makeConstraints { (make) -> Void in
            make.left.equalTo(lable2.snp_right).offset(8 * SCALE_X);
            make.top.equalTo(line.snp_bottom).offset(16 * SCALE_Y);
            make.right.equalTo(-10 * SCALE_X);
            
        }

        
        
        
        loginButton.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(self.lableView.snp_bottom).offset(30 * SCALE_Y);
            make.left.equalTo(15 * SCALE_X);
            make.right.equalTo(-15 * SCALE_X);
            make.height.equalTo(45 * SCALE_Y);
        }
        registerButton.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(loginButton.snp_bottom).offset(20 * SCALE_Y);
            make.left.equalTo(15 * SCALE_X);
        }
        forgetButton.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(loginButton.snp_bottom).offset(20 * SCALE_Y);
            make.right.equalTo(-15 * SCALE_X);
        }
    }

}

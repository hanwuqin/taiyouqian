//
//  Contanst.swift
//  taiyouqian
//
//  Created by 郭二强 on 15/12/16.
//  Copyright © 2015年 郭二强. All rights reserved.
//

import Foundation
import UIKit
//定义屏幕尺寸
let M_S_B = UIScreen.mainScreen().bounds;
let M_S_B_W = M_S_B.width;
let M_S_B_H = M_S_B.height;

//iphone4 iphone4s 屏幕高度
let I_P_4_W:CGFloat = 320.0;
let I_P_4_H:CGFloat = 480.0;
//iphone5 iphone5s 屏幕高度
let I_P_5_W:CGFloat = 320.0;
let I_P_5_H:CGFloat = 568.0;
//iphone6 iphone6s 屏幕高度
let I_P_6_W:CGFloat = 375.0;
let I_P_6_H:CGFloat = 667.0;
//iphone6P iphone6sP 屏幕高度
let I_P_6P_W:CGFloat = 414.0;
let I_P_6P_H:CGFloat = 736.0;

//获取屏幕缩放比例
let AUTOSIZE_SCALE = AutoSizeScal();
let SCALE_X = AUTOSIZE_SCALE.X;
let SCALE_Y = AUTOSIZE_SCALE.Y;



//定义状态栏高度
let STATUS_BAR_H:CGFloat = 64;
//定义系统版本号
let S_V = UIDevice.currentDevice().systemVersion;

//定义导航颜色，背景颜色
let C_1 = "#F8F4EA";
let TABBAR_COLOR = "#b87a31";
let NAV_COLOR = "#BC8F52";

//定义按钮颜色
let BUTTON_C_1 = "#f14b34";
//定义字体颜色
let FONT_C_1 = "#343434";
let FONT_C_2 = "#b87a31";
//定义字体大小
let FONT_NAME = "Helvetica";
let FONT_SIZE_1:CGFloat = 17 * SCALE_Y;
let FONT_SIZE_2:CGFloat = 13 * SCALE_Y;






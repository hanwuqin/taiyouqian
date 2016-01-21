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
let APP_TABBAR_H:CGFloat = 49;
//定义系统版本号
let S_V = UIDevice.currentDevice().systemVersion;
let SOURCE = "IOS";

//定义导航颜色，背景颜色
let APP_BG_C_1 = "#faf4eb";
let APP_BG_C_2 = "#b87a31";
let APP_BG_C_3 = "#BC8F52";
let APP_BG_C_4 = "#f4f4ef";
let APP_BG_C_5 = "#f5f3ef";
let APP_BG_C_6 = "#ce9a52";

let APP_BG_C_7 = "#c0894e";
let APP_BG_C_8 = "#FFFFFF";
let APP_BG_C_9 = "#fcd29b";


//定义按钮颜色
let APP_BTN_BG_C_1 = "#f14b34";
let APP_BTN_BG_C_2 = "#FFFFFF";


//定义字体颜色
let APP_FONT_C_1 = "#343434";
let APP_FONT_C_2 = "#ce9a52";
let APP_FONT_C_3 = "#F44A2A";
let APP_FONT_C_4 = "#606060";
let APP_FONT_C_5 = "#7b736a";
let APP_FONT_C_6 = "#565656";
let APP_FONT_C_7 = "#f14b33";
let APP_FONT_C_8 = "#36a1f6";

//定义字体大小
let APP_FONT_NAME = "Helvetica";

let APP_FONT_SIZE_12:CGFloat = 12 * SCALE_Y;
let APP_FONT_SIZE_13:CGFloat = 13 * SCALE_Y;
let APP_FONT_SIZE_14:CGFloat = 14 * SCALE_Y;
let APP_FONT_SIZE_15:CGFloat = 15 * SCALE_Y;
let APP_FONT_SIZE_16:CGFloat = 16 * SCALE_Y;
let APP_FONT_SIZE_17:CGFloat = 17 * SCALE_Y;
let APP_FONT_SIZE_18:CGFloat = 18 * SCALE_Y;
let APP_FONT_SIZE_20:CGFloat = 20 * SCALE_Y;
let APP_FONT_SIZE_28:CGFloat = 28 * SCALE_Y;
let APP_FONT_SIZE_36:CGFloat = 36 * SCALE_Y;
let APP_FONT_SIZE_59:CGFloat = 59 * SCALE_Y;

//定义字体
let Font_Size_12 = UIFont(name: APP_FONT_NAME, size: APP_FONT_SIZE_12)!;
let Font_Size_13 = UIFont(name: APP_FONT_NAME, size: APP_FONT_SIZE_13)!;
let Font_Size_14 = UIFont(name: APP_FONT_NAME, size: APP_FONT_SIZE_14)!;
let Font_Size_15 = UIFont(name: APP_FONT_NAME, size: APP_FONT_SIZE_15)!;
let Font_Size_16 = UIFont(name: APP_FONT_NAME, size: APP_FONT_SIZE_16)!;
let Font_Size_17 = UIFont(name: APP_FONT_NAME, size: APP_FONT_SIZE_17)!;
let Font_Size_18 = UIFont(name: APP_FONT_NAME, size: APP_FONT_SIZE_18)!;
let Font_Size_20 = UIFont(name: APP_FONT_NAME, size: APP_FONT_SIZE_20)!;
let Font_Size_28 = UIFont(name: APP_FONT_NAME, size: APP_FONT_SIZE_28)!;
let Font_Size_36 = UIFont(name: APP_FONT_NAME, size: APP_FONT_SIZE_36)!;
let Font_Size_59 = UIFont(name: APP_FONT_NAME, size: APP_FONT_SIZE_59)!;

//定义API接口地址
let ISONLIEN = true;
let SERVER_API_PRO_1 = "http://m.taiyouqian.com/tyq.php/";
let SERVER_API_PRO_2 = "http://m.taiyouqian.com/taiyouqian.php/";
//定义测试环境地址
let SERVER_API_DEV_1 = "http://m.taiyouqian.toadbank.net.cn/tyq.php/";
let SERVER_API_DEV_2 = "http://m.taiyouqian.toadbank.net.cn/taiyouqian.php/";
//定义签名验证的key
let KEYA = "EEA5C5C6E58E01E98F73F8A8F4C50B94";
let KEYB = "A8B9951D94E094D879AD864D1E7FF64F";

//定义网络请求回调函数类型
typealias SuccessBlock = (obj:AnyObject)->Void!
typealias failBlock = (obj:AnyObject)->Void!




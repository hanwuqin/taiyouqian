//
//  CommonFunc.swift
//  taiyouqian
//
//  Created by 郭二强 on 15/12/29.
//  Copyright © 2015年 郭二强. All rights reserved.
//

import Foundation
import UIKit

/**
 Definition list
 16进制字符串 转换为UIColor 颜色
 
 :param: hexString   16进制颜色字符窜 #FFFFFF或FFFFF
 
 :returns: UIColor 颜色
 */
func ColorHexString(var hexString:String) -> UIColor{
    if hexString.hasPrefix("#") {
        let index = hexString.startIndex.advancedBy(1);
        hexString = hexString.substringFromIndex(index);
    }
    //R的值
    let RendInex = hexString.startIndex.advancedBy(2);
    let Rs = hexString.substringToIndex(RendInex);
    
    hexString = hexString.substringFromIndex(RendInex);
    
    let Gs = hexString.substringToIndex(RendInex);
    
    let Bs = hexString.substringFromIndex(RendInex);
    var  r:UInt32 = 0, g:UInt32 = 0, b:UInt32 = 0;
    NSScanner(string: Rs).scanHexInt(&r);
    NSScanner(string: Gs).scanHexInt(&g);
    NSScanner(string: Bs).scanHexInt(&b);
    return UIColor(colorLiteralRed: Float(r)/255.0, green: Float(g)/255.0, blue: Float(b)/255.0, alpha: 1.0)
}

/**
 Definition list
 屏幕适配比例
 
 :returns:(X,Y)
 */
func AutoSizeScal() -> (X:CGFloat,Y:CGFloat){
    if( M_S_B_H > 568){
        return (X:M_S_B_W / I_P_6_W,Y:M_S_B_H / I_P_6_H);
    }else{
        //return (X:M_S_B_W / I_P_6_W,Y:M_S_B_H / I_P_6_H);
        return (X:M_S_B_W / I_P_6_W,Y:1.0);
    }
}


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
        self.navigationController!.navigationBar.barTintColor = self.ColorHexString(NAV_COLOR);
        self.tabBarController!.tabBar.tintColor = self.ColorHexString(NAV_COLOR);
    }
    
    
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
}

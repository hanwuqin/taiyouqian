//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
import Foundation
import UIKit
//定义屏幕尺寸
let M_S_B = UIScreen.mainScreen().bounds;
let M_S_B_W = M_S_B.width;
let M_S_B_H = M_S_B.height;
//定义系统版本号
let S_V = UIDevice.currentDevice().systemVersion;


//定义颜色编码
let NAV_COLOR = "#b87a31";
if #available(iOS 8, *) {
    // iOS 8或更高版本
    print("1")
    
} else {
    // iOS8之前的版本
    print("2")
    
}
class login{

    func set()->Int{
        return 1;
    }
}
let lo = login();
lo.set();
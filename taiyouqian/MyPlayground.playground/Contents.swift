//: Playground - noun: a place where people can play
import Foundation
import UIKit
//定义屏幕尺寸
let M_S_B = UIScreen.mainScreen().bounds;
let M_S_B_W = M_S_B.width;
let M_S_B_H = M_S_B.height;
//定义系统版本号
let S_V = UIDevice.currentDevice().systemVersion;
if #available(iOS 8, *) {
    // iOS 8或更高版本
    print("1")
    
} else {
    // iOS8之前的版本
    print("2")
    
}
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
//定义字体颜色
let APP_FONT_C_1 = "#343434";
let APP_FONT_C_2 = "#ce9a52";
let APP_FONT_C_3 = "#F44A2A";
let APP_FONT_C_4 = "#606060";
let APP_FONT_C_5 = "#7b736a";
let APP_FONT_C_6 = "#565656";

ColorHexString(APP_FONT_C_1)
ColorHexString(APP_FONT_C_2)
ColorHexString(APP_FONT_C_2)
ColorHexString(APP_FONT_C_4)
ColorHexString(APP_FONT_C_5)
ColorHexString(APP_FONT_C_6)



let APP_BG_C_1 = "#faf4eb";
let APP_BG_C_2 = "#b87a31";
let APP_BG_C_3 = "#BC8F52";
let APP_BG_C_4 = "#f4f4ef";
let APP_BG_C_5 = "#f5f3ef";
let APP_BG_C_6 = "#ce9a52";
let APP_BG_C_7 = "#c0894e";
let APP_BG_C_8 = "#FFFFFF";
let APP_BG_C_9 = "#fcd29b";
ColorHexString(APP_BG_C_1)
ColorHexString(APP_BG_C_2)
ColorHexString(APP_BG_C_3)
ColorHexString(APP_BG_C_4)
ColorHexString(APP_BG_C_5)
ColorHexString(APP_BG_C_6)
ColorHexString(APP_BG_C_7)
ColorHexString(APP_BG_C_8)
ColorHexString(APP_BG_C_9)



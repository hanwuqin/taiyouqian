//
//  SwiftNotice.swift
//  taiyouqian
//
//  Created by 郭二强 on 16/1/12.
//  Copyright © 2016年 郭二强. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    /// wait with your own animated images
    func pleaseWaitWithImages(imageNames: Array<UIImage>, timeInterval: Int) {
        SwiftNotice.wait(imageNames, timeInterval: timeInterval)
    }
    // api changed from v3.3
    func noticeTop(text: String, autoClear: Bool = true, autoClearTime: Int = 1) {
        SwiftNotice.noticeOnSatusBar(text, autoClear: autoClear, autoClearTime: autoClearTime)
    }
    
    // new apis from v3.3
    func noticeSuccess(text: String, autoClear: Bool = true, autoClearTime: Int = 3) {
        SwiftNotice.showNoticeWithText(NoticeType.success, text: text, autoClear: autoClear, autoClearTime: autoClearTime)
    }
    func noticeError(text: String, autoClear: Bool = true, autoClearTime: Int = 3) {
        SwiftNotice.showNoticeWithText(NoticeType.error, text: text, autoClear: autoClear, autoClearTime: autoClearTime)
    }
    func noticeInfo(text: String, autoClear: Bool = false, autoClearTime: Int = 3) {
        SwiftNotice.showNoticeWithText(NoticeType.info, text: text, autoClear: autoClear, autoClearTime: autoClearTime)
    }
    
    // old apis
    func successNotice(text: String, autoClear: Bool = true) {
        SwiftNotice.showNoticeWithText(NoticeType.success, text: text, autoClear: autoClear, autoClearTime: 3)
    }
    func errorNotice(text: String, autoClear: Bool = true) {
        SwiftNotice.showNoticeWithText(NoticeType.error, text: text, autoClear: autoClear, autoClearTime: 3)
    }
    func infoNotice(text: String, autoClear: Bool = true) {
        SwiftNotice.showNoticeWithText(NoticeType.info, text: text, autoClear: autoClear, autoClearTime: 3)
    }
    func notice(text: String, type: NoticeType, autoClear: Bool, autoClearTime: Int = 3) {
        SwiftNotice.showNoticeWithText(type, text: text, autoClear: autoClear, autoClearTime: autoClearTime)
    }
    func pleaseWait() {
        SwiftNotice.wait()
    }
    func noticeOnlyText(text: String) {
        SwiftNotice.showText(text)
    }
    
    func noticeOnlyText(text: String,autoUI:Bool = true) {
        SwiftNotice.showText(text, autoUI: autoUI);
    }
    func clearAllNotice() {
        SwiftNotice.clear()
    }
}

//扩展UIcolor类
extension UIColor{
}

//扩展UIview 类
extension UIView{
 
}
//扩展ImageView 点击事件
extension UIImageView{
    //添加绑定事件
    func addTarget(ImageView:UIImageView,targe:AnyObject,action:Selector){
        ImageView.userInteractionEnabled = true
        let control = UIControl();
        control.frame = CGRectMake(0, 0, ImageView.frame.width, ImageView.frame.height);
        control.tag = ImageView.tag;
        ImageView.addSubview(control);
        control.addTarget(targe, action: action, forControlEvents: UIControlEvents.TouchUpInside);
    }
}







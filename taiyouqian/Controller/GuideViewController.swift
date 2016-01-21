//
//  GuideViewController.swift
//  taiyouqian
//
//  Created by 郭二强 on 15/12/21.
//  Copyright © 2015年 郭二强. All rights reserved.
//

import UIKit
import SnapKit
class GuideViewController:UIViewController {
    
    let ScrollView = UIScrollView();
    let Button = UIButton();
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(ScrollView);
        self.view.addSubview(Button);
        ScrollViewSet();
    }

    func ScrollViewSet(){
        ScrollView.delegate = self;
        ScrollView.frame = UIScreen.mainScreen().bounds;
        let ImageW = ScrollView.frame.width;
        let ImageH = ScrollView.frame.height;
        let ImageTotal = 3;
        ScrollView.contentSize = CGSize(width:ImageW * CGFloat(ImageTotal), height: ImageH);
        ScrollView.pagingEnabled = true;
        ScrollView.showsHorizontalScrollIndicator = false;
        ScrollView.showsVerticalScrollIndicator = false;
        ScrollView.bounces = false;
        for(var i = 0; i < ImageTotal;i++){
            let imageView = UIImageView(frame: CGRectMake(ImageW * CGFloat(i), 0, ImageW, ImageH));
            imageView.image = UIImage(named: "guideBg\(i)");
            ScrollView.addSubview(imageView);
        }

    }
    
    /**
     Definition list
     引导按钮出现
     */

    func showButton(){
        Button.hidden = false;
        Button.snp_makeConstraints { (make) -> Void in
            make.left.equalTo(self.view).offset(15);
            make.right.equalTo(self.view).offset(-16);
            make.bottom.equalTo(self.view).offset(-30)
            make.height.equalTo(42);
        }
        
        Button.setImage(UIImage(named: "guideStart"), forState: UIControlState.Normal)
        Button.setImage(UIImage(named: "guideStart"), forState: UIControlState.Highlighted)
        Button.addTarget(self,action:Selector("tapped:"),forControlEvents:.TouchUpInside)
    }
    
    /**
    Definition 点击事件处理
    */
    func tapped(Button:UIButton){
        let tabBarController = TabBarViewController();
        self.presentViewController(tabBarController, animated: true, completion: nil);
    }
    
}
//实现代理
extension GuideViewController:UIScrollViewDelegate{
    ///实现uiscroolView 滚动协议
    func scrollViewDidScroll(scrollView: UIScrollView) {
        let x = scrollView.contentOffset.x;
        if((x / M_S_B_W) == 2){
            showButton();
        }else{
            //隐藏按钮
            Button.hidden = true;
        }
    }
}

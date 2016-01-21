//
//  MyView.swift
//  taiyouqian
//
//  Created by 郭二强 on 16/1/19.
//  Copyright © 2016年 郭二强. All rights reserved.
//

import UIKit
import TZStackView
class MyView: UIView {
    
    var BaseView:UIView!;
    var dataTableView:UITableView!;
    var contentView = UIView();
    var headerView_1:UIView! = UIView();
    var headerView_2:UIView! = UIView();
    var headerView_3:UIView! = UIView();
    var btnArray = ["我的投资","投资人认证","银行卡","安全中心"];
    //加载界面
    func InitView(){
        dataTableView = UITableView(frame: CGRectMake(0, 0, M_S_B_W, (M_S_B_H - STATUS_BAR_H)),style:UITableViewStyle.Plain);
        dataTableView.separatorStyle = UITableViewCellSeparatorStyle.None;
        BaseView.addSubview(dataTableView);
        dataTableView.tableHeaderView = contentView;
        dataTableView.backgroundColor = UIColor.redColor();
        setHeaderView();
        self.setAutoLayout();
        
    }
    //设置头部视图
    func setHeaderView(){
        contentView.backgroundColor = UIColor.grayColor();
        contentView.addSubview(headerView_1);
        contentView.addSubview(headerView_2);
        contentView.addSubview(headerView_3);
        headerView_1.backgroundColor = UIColor.whiteColor();
        headerView_2.backgroundColor = ColorHexString(APP_BG_C_3);
        headerView_3.backgroundColor = UIColor.whiteColor();
        
        
//        var View = Array<UIButton>();
//        for(var i = 0; i < btnArray.count; i++){
//            let button = UIButton();
//            button.tag = i;
//        
//            button.setTitle(btnArray[i], forState: .Normal);
//            button.setImage(UIImage(named: "subHeader\(i)"), forState: .Normal)
//            button.titleLabel?.font = Font_Size_13;
//            button.setTitleColor(ColorHexString(APP_FONT_C_5), forState: .Normal)
//            button.backgroundColor = UIColor.whiteColor();
//            button.contentEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0);
//            button.imageEdgeInsets = UIEdgeInsets(top: 17, left: 30, bottom: 40, right: 30)
//            button.titleEdgeInsets = UIEdgeInsets(top: 60, left: -30, bottom: 15, right: 0);
//            button.addTarget(self, action: Selector("pushView:"), forControlEvents: UIControlEvents.TouchUpInside);
//            contentView.addSubview(button);
//        }
    
//        headerView_2 = TZStackView(arrangedSubviews: View);
//        headerView_2.distribution = .FillEqually
//        headerView_2.alignment = .Fill
//        headerView_2.axis = .Horizontal
//        headerView_2.spacing = 1
        



        
    }
    
    func pushView(Btn:UIButton){
        print("点击事件");
    }
    
    func setAutoLayout(){
        contentView.snp_makeConstraints { (make) -> Void in
//            make.left.right.top.equalTo(0);
//            make.height.equalTo(326 * SCALE_Y);
            make.edges.equalTo(self.BaseView).inset(UIEdgeInsetsMake(0, 0, 240, 0));
        }
        headerView_1.snp_makeConstraints { (make) -> Void in
            make.left.right.top.equalTo(0);
            make.height.greaterThanOrEqualTo(105 * SCALE_Y);
        }
        headerView_2.snp_makeConstraints { (make) -> Void in
            make.left.right.equalTo(0);
            make.top.equalTo(headerView_1.snp_bottom).offset(1);
            make.height.greaterThanOrEqualTo(93 * SCALE_Y);
        }
        headerView_3.snp_makeConstraints { (make) -> Void in
            make.left.right.equalTo(0);
            make.top.equalTo(headerView_2.snp_bottom).offset(36);
            make.height.equalTo(75)

        }

    }
    
}

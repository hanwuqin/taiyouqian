//
//  ziChanView.swift
//  taiyouqian
//
//  Created by 郭二强 on 16/1/18.
//  Copyright © 2016年 郭二强. All rights reserved.
//

import UIKit

class ZiChanView: UIView {
    
    var baseView:UIView!;
    var dataTableView:UITableView!;
    var contentView = UIView();
    var headView = UIView();
    var footerView = UIView();
    var lable1:UILabel!;
    var lable2:UILabel!;
    var lable3:UILabel!;
    var lable4:UILabel!;
    var lable5:UILabel!;
    var lable6:UILabel!;
    var lable7:UILabel!;
    var lable8:UILabel!;
    var lable9:UILabel!;
    var lable10:UILabel!;
    
    var lable1_c:UILabel!;
    var lable2_c:UILabel!;
    var lable3_c:UILabel!;
    var lable4_c:UILabel!;
    var lable5_c:UILabel!;
    var lable6_c:UILabel!;
    var lable7_c:UILabel!;
    var lable8_c:UILabel!;
    
    var line1:UIView!;
    var line2:UIView!;
    var line3:UIView!;
    var line4:UIView!;
    var line5:UIView!;
    var line6:UIView!;
    
    
    var contol:UIControl!;
    //加载界面
    func initView(){
         self.dataTableView = UITableView(frame: CGRectMake(0, 0, M_S_B_W, (M_S_B_H - STATUS_BAR_H)),style:UITableViewStyle.Plain);
        self.baseView.addSubview(dataTableView);
        
        self.dataTableView.separatorStyle = UITableViewCellSeparatorStyle.None;
        self.dataTableView.tableHeaderView = contentView;

        
        lable9 = ex_UIlable("资产明细", color: APP_FONT_C_5, font: Font_Size_13);
        self.baseView.addSubview(lable9);
        
        contentView.addSubview(headView);
        contentView.addSubview(footerView);
        
        contentView.backgroundColor = ColorHexString(APP_BG_C_1);
        self.headView.backgroundColor = ColorHexString(APP_BG_C_7);
        self.footerView.backgroundColor = ColorHexString(APP_BG_C_8);
        
        
        self.setHeaderView();
        self.setFooterView();
        self.setAutoLayout();
        self.bindAction();


        
    }
    //绑定事件
    func bindAction(){
        self.contol.addTarget(ZiChanViewController(), action: Selector("PushViewVC"), forControlEvents: .TouchUpInside)
    }
    
    //头部
    func setHeaderView(){
        self.lable1 = ex_UIlable("太有乾总资产", color: APP_BG_C_8, font: Font_Size_15);
        self.lable1_c = ex_UIlable("0.00", color: APP_BG_C_8, font: Font_Size_36);
        self.lable2 = ex_UIlable("在投本金", color: APP_BG_C_8, font: Font_Size_13);
        self.lable2_c = ex_UIlable("0.00", color: APP_BG_C_8, font: Font_Size_16);
        self.lable3 = ex_UIlable("待收收益", color: APP_BG_C_8, font: Font_Size_13);
        self.lable3_c = ex_UIlable("0.00", color: APP_BG_C_8, font: Font_Size_16);
        
        self.lable10 = ex_UIlable("（单位：元）", color: APP_BG_C_8, font: Font_Size_15)
        
        self.line1 = UIView();
        self.line1.backgroundColor = ColorHexString(APP_BG_C_9);
        self.line2 = UIView();
        self.line2.backgroundColor = ColorHexString(APP_BG_C_9);
        
        self.headView.addSubview(self.lable1);
        self.headView.addSubview(self.lable2);
        self.headView.addSubview(self.lable3);
        self.headView.addSubview(self.lable1_c);
        self.headView.addSubview(self.lable2_c);
        self.headView.addSubview(self.lable3_c);
        self.headView.addSubview(self.line1);
        self.headView.addSubview(self.line2);
        self.headView.addSubview(self.lable10)
    }
    
    //底部
    func setFooterView(){
        self.lable4 = ex_UIlable("金蟾宝总资产", color: APP_FONT_C_1, font: Font_Size_15);
        self.lable5 = ex_UIlable("在投本金", color: APP_FONT_C_4, font: Font_Size_13);
        self.lable6 = ex_UIlable("待收收益", color: APP_FONT_C_4, font: Font_Size_13);
        self.lable7 = ex_UIlable("回款中的金额", color: APP_FONT_C_4, font: Font_Size_13);
        self.lable8 = ex_UIlable("累计收益", color: APP_FONT_C_4, font: Font_Size_13);
        self.lable4_c = ex_UIlable("0.00", color: APP_FONT_C_7, font: Font_Size_28);
        self.lable5_c = ex_UIlable("0.00", color: APP_FONT_C_4, font: Font_Size_15);
        self.lable6_c = ex_UIlable("0.00", color: APP_FONT_C_8, font: Font_Size_15);
        self.lable7_c = ex_UIlable("0.00", color: APP_FONT_C_4, font: Font_Size_15);
        self.lable8_c = ex_UIlable("0.00", color: APP_FONT_C_7, font: Font_Size_15);
        self.contol = UIControl();
        self.line3 = ex_UIView_line(APP_BG_C_5);
        self.line4 = ex_UIView_line(APP_BG_C_5);
        self.line5 = ex_UIView_line(APP_BG_C_5);
        self.line6 = ex_UIView_line(APP_BG_C_5);
       
        self.footerView.addSubview(self.contol);
        self.footerView.addSubview(self.lable4);
        self.footerView.addSubview(self.lable5);
        self.footerView.addSubview(self.lable6);
        self.footerView.addSubview(self.lable7);
        self.footerView.addSubview(self.lable8);
        self.footerView.addSubview(self.lable4_c);
        self.footerView.addSubview(self.lable5_c);
        self.footerView.addSubview(self.lable6_c);
        self.footerView.addSubview(self.lable7_c);
        self.footerView.addSubview(self.lable8_c);
        self.footerView.addSubview(self.line3);
        self.footerView.addSubview(self.line4);
        self.footerView.addSubview(self.line5);
        self.footerView.addSubview(self.line6);
    }
    //约束
    func setAutoLayout(){

        self.contentView.snp_makeConstraints { (make) -> Void in
            make.edges.equalTo(self.baseView).inset(UIEdgeInsetsMake(0, 0, 0, 0));
        }
        self.headView.snp_makeConstraints { (make) -> Void in
            make.left.right.equalTo(0);
            //make.height.greaterThanOrEqualTo(186 * SCALE_Y);
            //make.width.greaterThanOrEqualTo(M_S_B_W);
        }
        self.footerView.snp_makeConstraints { (make) -> Void in
            make.left.right.equalTo(0);
            make.top.equalTo(self.headView.snp_bottom).offset(35 * SCALE_Y);
            //make.height.greaterThanOrEqualTo(250 * SCALE_Y);
            //make.width.greaterThanOrEqualTo(M_S_B_W);
        }
        
        self.lable1.snp_makeConstraints { (make) -> Void in
            make.left.equalTo(13 * SCALE_X);
            make.top.equalTo(17 * SCALE_Y);
        }
        self.lable1_c.snp_makeConstraints { (make) -> Void in
            make.left.equalTo(13 * SCALE_X);
            make.top.equalTo(40 * SCALE_Y);
        }
        
        
        self.line1.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(self.lable1_c.snp_bottom).offset(31 * SCALE_Y);
            make.height.equalTo(1);
            make.left.equalTo(0);
            make.right.equalTo(0);
        }
        
        self.lable2.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(self.line1.snp_bottom).offset(11 * SCALE_Y);
            make.left.equalTo(13 * SCALE_X);
        }
        self.lable2_c.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(self.lable2.snp_bottom).offset(11 * SCALE_Y);
            make.left.equalTo(13 * SCALE_X);
            make.bottom.equalTo(-20 * SCALE_Y)
        }
        
        self.line2.snp_makeConstraints { (make) -> Void in
            make.centerX.equalTo(self.headView.center.x);
            make.top.equalTo(self.line1.snp_bottom).offset(12 * SCALE_Y);
            make.bottom.equalTo(-20 * SCALE_Y)
            make.width.equalTo(1);
        }
        
        self.lable3.snp_makeConstraints { (make) -> Void in
            make.left.equalTo(self.line2).offset(14 * SCALE_X);
            make.top.equalTo(self.lable2.snp_top)
            
        }
        self.lable3_c.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(self.lable2_c.snp_top);
            make.left.equalTo(self.lable3.snp_left);
        }
        
        self.lable9.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(headView.snp_bottom).offset(10 * SCALE_Y);
            make.left.equalTo(11 * SCALE_X);
        }
        self.lable10.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(17 * SCALE_Y);
            make.right.equalTo(-13 * SCALE_Y);
        }
        
        //footerView布局
        self.lable4.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(15 * SCALE_Y);
            make.left.equalTo(13 * SCALE_Y);
        }
        self.lable4_c.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(self.lable4.snp_bottom).offset(15 * SCALE_Y);
            make.left.equalTo(13 * SCALE_Y);
        }
        
        self.contol.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(lable4.snp_top);
            make.left.equalTo(lable4.snp_left);
            make.right.equalTo(-13 * SCALE_Y);
            make.bottom.equalTo(line3).offset(0);
        }
        
        self.line3.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(self.lable4_c.snp_bottom).offset(20 * SCALE_Y);
            make.height.equalTo(1);
            make.left.equalTo(13 * SCALE_Y);
            make.right.equalTo(-13 * SCALE_Y)
        }
        
        
        self.lable5.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(self.line3.snp_bottom).offset(18 * SCALE_Y);
            make.left.equalTo(self.lable4.snp_left);
        }
        self.lable5_c.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(self.lable5.snp_bottom).offset(11 * SCALE_Y);
            make.left.equalTo(self.lable4.snp_left);
        }

        
        self.line4.snp_makeConstraints { (make) -> Void in
            make.centerX.equalTo(self.headView.center.x);
            make.top.equalTo(self.line3.snp_bottom).offset(18 * SCALE_Y);
            make.bottom.equalTo(self.line5.snp_top).offset(-18 * SCALE_Y)
            make.width.equalTo(1);
        }
        
        self.lable6.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(self.lable5.snp_top);
            make.left.equalTo(self.line4.snp_right).offset(13 * SCALE_X);
        }
        self.lable6_c.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(self.lable5_c.snp_top);
            make.left.equalTo(self.lable6.snp_left);
        }

        
        
        self.line5.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(self.lable5_c.snp_bottom).offset(21 * SCALE_Y);
            make.height.equalTo(1);
            make.left.equalTo(13 * SCALE_Y);
            make.right.equalTo(-13 * SCALE_Y)
        }
        
        self.lable7.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(self.line5.snp_bottom).offset(21 * SCALE_Y);
            make.left.equalTo(self.lable4.snp_left);
            
        }
        self.lable7_c.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(self.lable7.snp_bottom).offset(11 * SCALE_Y);
            make.left.equalTo(self.lable4.snp_left);
            make.bottom.equalTo(-23 * SCALE_Y)
        }
        
        self.line6.snp_makeConstraints { (make) -> Void in
            make.centerX.equalTo(self.headView.center.x);
            make.top.equalTo(self.line5.snp_bottom).offset(18 * SCALE_Y);
            make.bottom.equalTo(-23 * SCALE_Y)
            make.width.equalTo(1);
        }

        self.lable8.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(self.lable7.snp_top);
            make.left.equalTo(self.line6.snp_right).offset(13 * SCALE_X);
        }
        
        self.lable8_c.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(self.lable7_c.snp_top);
            make.left.equalTo(self.lable8.snp_left);
        }
        


    }

}

//
//  jcbPblistView.swift
//  taiyouqian
//
//  Created by 郭二强 on 16/1/15.
//  Copyright © 2016年 郭二强. All rights reserved.
//

import UIKit

class JcbPblistView: UIView {

    var dataTable:UITableView!;
    
    //创建UItableView
    func InitView(ContentView:UIView){
        self.dataTable = UITableView(frame: CGRectMake(0, 0, M_S_B_W, (M_S_B_H-STATUS_BAR_H)),style:UITableViewStyle.Plain);
        //self.dataTable = UITableView();
        self.dataTable.separatorStyle = UITableViewCellSeparatorStyle.None;
        self.dataTable.backgroundColor = ColorHexString(APP_BG_C_5);
        ContentView.addSubview(self.dataTable);
//        self.dataTable.snp_makeConstraints { (make) -> Void in
//            make.edges.equalTo(ContentView).inset(UIEdgeInsetsMake(0, 0, 0, 0));
//        }

    }
    
    //设置数据
    func setCellData(cell:ListTableViewCell,datamodel:PbistModel){
        cell.Lable1.text = datamodel.PrdName;
        if(datamodel.ProductActivity == "2"){
            cell.Lable2.text = "含新手收益\(datamodel.SupplementaryAnnual)%";
            cell.Lable2.layer.borderColor = ColorHexString(APP_FONT_C_2).CGColor;
            cell.Lable2.layer.borderWidth = 1;
            
        }
        let labstr4:NSString = "\(datamodel.StandardAnnual)%";
        let range:NSRange = labstr4.rangeOfString("%");
        let lable4t = NSMutableAttributedString(string: labstr4 as String, attributes: [NSFontAttributeName:Font_Size_20]);
        lable4t.addAttribute(NSFontAttributeName, value: Font_Size_15, range: range)
        cell.Lable4.attributedText = lable4t;
        
        cell.Lable5.text = "\(datamodel.Investunit)元";
        cell.Lable6.text = "\(datamodel.InvestmentTime)天";
    }


}

class ListTableViewCell: UITableViewCell {
    
    var Lable1 = UILabel()
    var Lable2 = UILabel()
    var Lable3 = UILabel()
    var Lable4 = UILabel()
    var Lable5 = UILabel()
    var Lable6 = UILabel()
    var Lable7 = UILabel()
    var Lable8 = UILabel()
    var Lable9 = UILabel()
    var line = UIView();
    var headerView = UIView();
    override init(style: UITableViewCellStyle, reuseIdentifier: String!) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.contentView.addSubview(headerView);
        self.contentView.addSubview(self.Lable1)
        self.contentView.addSubview(self.Lable2)
        self.contentView.addSubview(self.Lable3)
        self.contentView.addSubview(self.Lable4)
        self.contentView.addSubview(self.Lable5)
        self.contentView.addSubview(self.Lable6)
        self.contentView.addSubview(self.Lable7)
        self.contentView.addSubview(self.Lable8)
        self.contentView.addSubview(self.Lable9)
        self.contentView.addSubview(line);
        
        self.selectionStyle = UITableViewCellSelectionStyle.None;
        self.setCuStomLayer();
        self.setAutoLayout();
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    //设置样式
    func setCuStomLayer(){
        Lable3.text = "去抢购";
        Lable7.text = "预期年化收益";
        Lable8.text = "起投金额";
        Lable9.text = "项目期限";
        headerView.backgroundColor = ColorHexString(APP_BG_C_5);
        
        line.backgroundColor = ColorHexString(APP_BG_C_5);
        Lable1.font = Font_Size_15;
        
        Lable2.textColor = ColorHexString(APP_FONT_C_2);
        Lable2.font = Font_Size_13;
        Lable3.layer.backgroundColor = ColorHexString(APP_BTN_BG_C_1).CGColor;
        Lable3.layer.cornerRadius = 3;
        Lable3.font = Font_Size_15;
        Lable3.textAlignment = NSTextAlignment.Center;
        Lable3.textColor = UIColor.whiteColor();
        
        Lable4.textColor = ColorHexString(APP_BTN_BG_C_1);

        
        Lable5.textColor = ColorHexString(APP_FONT_C_6);
        Lable5.font = Font_Size_18;
        Lable6.textColor = ColorHexString(APP_FONT_C_6);
        Lable6.font = Font_Size_18;
        
        Lable7.font = Font_Size_15;
        Lable7.textAlignment = NSTextAlignment.Center;
        Lable7.textColor = ColorHexString(APP_FONT_C_5);
        
        Lable8.font = Font_Size_15;
        Lable8.textAlignment = NSTextAlignment.Center;
        Lable8.textColor = UIColor.whiteColor();
        Lable8.textColor = ColorHexString(APP_FONT_C_5);
        
        
        
        
        Lable9.font = Font_Size_15;
        Lable9.textAlignment = NSTextAlignment.Center;
        Lable9.textColor = ColorHexString(APP_FONT_C_5);
        
//        Lable1.backgroundColor = UIColor.redColor();
//        Lable2.backgroundColor = UIColor.greenColor();
//        Lable4.backgroundColor = UIColor.greenColor();
//        Lable5.backgroundColor = UIColor.redColor();
//        Lable6.backgroundColor = UIColor.greenColor();
//        Lable7.backgroundColor = UIColor.redColor();
//        Lable8.backgroundColor = UIColor.greenColor();
//        Lable9.backgroundColor = UIColor.redColor();

        
    }
    //设置约束
    func setAutoLayout(){
        headerView.snp_makeConstraints { (make) -> Void in
            make.height.equalTo(10 * SCALE_Y)
           make.left.right.equalTo(0)
        }
        
        Lable1.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(headerView.snp_bottom).offset(16 * SCALE_Y);
            make.left.equalTo(13 * SCALE_X);
        }
        Lable2.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(headerView.snp_bottom).offset(17 * SCALE_Y);
            make.left.equalTo(Lable1.snp_right).offset(5 * SCALE_X);
        }
        Lable3.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(headerView.snp_bottom).offset(16 * SCALE_Y);
            make.right.equalTo(-15 * SCALE_X);
            make.width.equalTo(55 * SCALE_X);
            make.height.equalTo(19 * SCALE_X);
        }
        line.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(Lable1.snp_bottom).offset(13 * SCALE_Y);
            make.left.equalTo(15 * SCALE_X);
            make.right.equalTo(-15 * SCALE_X);
            make.height.equalTo(1);
        }
        
        Lable4.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(line.snp_bottom).offset(19 * SCALE_Y);
            make.left.equalTo(15 * SCALE_X);
            make.width.equalTo(88 * SCALE_X);
        }
        
        Lable5.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(line.snp_bottom).offset(19 * SCALE_Y);
            make.left.equalTo(Lable4.snp_right).offset(55 * SCALE_X);
        }
        
        Lable6.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(line.snp_bottom).offset(19 * SCALE_Y);
            make.right.equalTo(-24 * SCALE_X);
        }
        
        Lable7.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(Lable4.snp_bottom).offset(13 * SCALE_Y);
            make.left.equalTo(13 * SCALE_X);
        }
        
        Lable8.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(Lable4.snp_bottom).offset(13 * SCALE_Y);
            make.left.equalTo(Lable4.snp_right).offset(55 * SCALE_X);
        }
        Lable9.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(Lable4.snp_bottom).offset(13 * SCALE_Y);
            make.right.equalTo(-24 * SCALE_X);
        }
    }
    
}


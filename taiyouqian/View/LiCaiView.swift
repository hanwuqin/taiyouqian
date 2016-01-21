//
//  liCaiView.swift
//  taiyouqian
//
//  Created by 郭二强 on 16/1/4.
//  Copyright © 2016年 郭二强. All rights reserved.
//

import UIKit
import AlamofireImage
class LiCaiView: UIView {
    
    //数据模型
    //var imageListModel:Array<ImageListModel>!
    //var recommendlModel:RecommendModel!;
    
    var dataTable:UITableView!;
    //轮播图
    var ScrollView:UIScrollView!;
    var pageView:UIPageControl!;
    var HeadView:UIView!;
    //推荐产品
    let Lable1  = UILabel();
    let Lable2  = UILabel();
    let Lable3  = UILabel();
    let Lable4 = UILabel();
    let Lable5 = UILabel();
    let Lable6 = UILabel();
    let Button = UIButton();
    let line = UIView();
    let View = UIView();
    
    //创建UItableView
    func InitView(ContentView:UIView){
        self.dataTable = UITableView(frame: CGRectMake(0, 0, M_S_B_W, (M_S_B_H - STATUS_BAR_H)),style:UITableViewStyle.Plain);
        self.dataTable.backgroundColor = ColorHexString(APP_BG_C_1);
        self.dataTable.separatorStyle = UITableViewCellSeparatorStyle.None;
        ContentView.addSubview(self.dataTable);
        setScrllView();
        
    }
    
    //轮播图UI布局
    func setScrllView(){
        HeadView = UIView();
        self.ScrollView = UIScrollView();
        self.pageView = UIPageControl();
        HeadView.frame = CGRectMake(0, 0, I_P_6_W * SCALE_X , 160 * SCALE_Y);
        HeadView.backgroundColor = UIColor.whiteColor();
        self.dataTable.tableHeaderView = HeadView;
        HeadView.addSubview(ScrollView);
        HeadView.addSubview(pageView);
        self.ScrollView.frame = HeadView.frame;
        self.ScrollView.pagingEnabled = true;
        self.ScrollView.showsHorizontalScrollIndicator = false;
        self.ScrollView.showsVerticalScrollIndicator = false;
        self.ScrollView.bounces = false;
        self.ScrollView.contentSize = CGSizeMake(M_S_B_W * 3, 0);
        pageView.frame = CGRectMake(315 * SCALE_X/2, 130 * SCALE_Y, 60 * SCALE_X, 20);
        pageView.currentPageIndicatorTintColor = UIColor.whiteColor();
        
    }
    //推荐产品UI布局
    func setModdleView(cell:UITableViewCell){
        
        cell.contentView.addSubview(Lable1);
        cell.contentView.addSubview(Lable2);
        cell.contentView.addSubview(Lable3);
        cell.contentView.addSubview(Lable4);
        cell.contentView.addSubview(View);
        cell.contentView.addSubview(Button);
        cell.contentView.addSubview(line);
        View.addSubview(Lable5);
        View.addSubview(Lable6);
        
        Lable1.textColor = ColorHexString(APP_FONT_C_1);
        Lable1.font = Font_Size_17;
        //Lable1.text = "金蟾宝新客专享";
        
        Lable2.textColor = ColorHexString(APP_FONT_C_3);
        Lable2.font = Font_Size_13;
        //Lable2.text = "含新手额外收益5%";
        Lable2.layer.borderColor = ColorHexString(APP_FONT_C_3).CGColor;
        Lable2.textAlignment = NSTextAlignment.Center;
       // Lable2.layer.borderWidth = 1;
        //Lable2.layer.cornerRadius = 2;
        
        Lable3.textColor = ColorHexString(APP_FONT_C_3);
        Lable3.textAlignment = NSTextAlignment.Right;
        
        line.backgroundColor = ColorHexString(APP_BG_C_2);
        
        Lable4.textColor = ColorHexString(APP_FONT_C_3);
        Lable4.textAlignment = NSTextAlignment.Center;

        
        Lable5.textColor = ColorHexString(APP_FONT_C_3);
        Lable5.textAlignment = NSTextAlignment.Center;

        
        Lable6.textColor = ColorHexString(APP_FONT_C_1);
        Lable6.font = Font_Size_13;
        Lable6.text = "预期年化收益";
        
        
        View.layer.cornerRadius = 170 * SCALE_Y/2;
        View.layer.borderColor = UIColor.redColor().CGColor;
        View.layer.borderWidth = 3;
        Button.backgroundColor = ColorHexString(APP_BTN_BG_C_1);
        Button.layer.cornerRadius = 5;
        Button.setTitle("立即抢购", forState: UIControlState.Normal);
        Button.titleLabel?.font = Font_Size_17;
        //绑定事件
        Button.addTarget(LicaiViewController(), action: Selector("PushViewC"), forControlEvents: UIControlEvents.TouchUpInside);
        //self.setRecommend(model);
        Lable1.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(15 * SCALE_Y);
            make.left.equalTo(13 * SCALE_X);
        }
        Lable2.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(15 * SCALE_Y);
            make.left.equalTo(Lable1.snp_right).offset(10 * SCALE_X);
        }
        
        View.snp_makeConstraints { (make) -> Void in
            make.width.height.equalTo(170 * SCALE_Y);
            make.top.equalTo(Lable2.snp_bottom).offset(9 * SCALE_Y);
            make.centerX.equalTo(cell);
        }
        
        Lable3.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(View.snp_bottom).offset(10 * SCALE_Y);
            make.left.equalTo(73 * SCALE_X)
            make.width.greaterThanOrEqualTo(100 * SCALE_X)
        }
        
        line.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(View.snp_bottom).offset(12 * SCALE_Y);
            make.left.equalTo(Lable3.snp_right).offset(12 * SCALE_X);
            make.width.equalTo(1)
            make.height.equalTo(15 * SCALE_Y)
        }
        
        Lable4.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(View.snp_bottom).offset(10 * SCALE_Y);
            make.left.equalTo(line.snp_right).offset(12 * SCALE_X)
        }
        Lable5.snp_makeConstraints { (make) -> Void in
            make.centerX.equalTo(View);
            make.centerY.equalTo(-5 * SCALE_Y);
        }
        
        Lable6.snp_makeConstraints { (make) -> Void in
            make.centerX.equalTo(View);
            make.centerY.equalTo(40 * SCALE_Y);
        }
        
        Button.snp_makeConstraints { (make) -> Void in
            make.left.equalTo(15 * SCALE_X);
            make.right.equalTo(-15 * SCALE_X);
            make.top.equalTo(Lable4.snp_bottom).offset(17 * SCALE_Y);
            make.height.equalTo(45 * SCALE_Y);
        }
    }
    
    //设置imageView
    func SetCellView(cell:UITableViewCell){
        let ImageView = UIImageView();
        let TextLable = UILabel();
        let detailTextLable = UILabel();
        ImageView.image = UIImage(named: "laihama");
        TextLable.text = "金蟾宝";
        TextLable.textColor = ColorHexString(APP_FONT_C_1);
        TextLable.font = Font_Size_17;
        detailTextLable.text = "金融资产项目";
        detailTextLable.textColor = ColorHexString(APP_FONT_C_2);
        detailTextLable.font = Font_Size_13;
        cell.accessoryType=UITableViewCellAccessoryType.DisclosureIndicator;
        cell.backgroundColor = ColorHexString(APP_BG_C_1);
        cell.contentView.addSubview(ImageView);
        cell.contentView.addSubview(TextLable);
        cell.contentView.addSubview(detailTextLable);
        
        ImageView.snp_makeConstraints { (make) -> Void in
            make.width.height.equalTo(56 * SCALE_Y);
            make.left.top.equalTo(12 * SCALE_Y);
        }
        TextLable.snp_makeConstraints { (make) -> Void in
            make.left.equalTo(ImageView.snp_right).offset(10 * SCALE_X);
            make.top.equalTo(22 * SCALE_Y);
        }
        detailTextLable.snp_makeConstraints { (make) -> Void in
            make.left.equalTo(ImageView.snp_right).offset(10 * SCALE_X);
            make.bottom.equalTo(-22 * SCALE_Y);
        }
        
    }
    
    //设置轮播图数据
    func setImageList(model:Array<ImageListModel>){
        //self.imageListModel = model;
        let imageTotal = CGFloat(model.count);
        ScrollView.contentSize = CGSizeMake(M_S_B_W * imageTotal, 0);
        for(var i = 0;i < model.count;i++){
            let imageView = UIImageView(frame: CGRectMake(HeadView.frame.width * CGFloat(i), 0, M_S_B_W, HeadView.frame.height));
            let url = NSURL(string: model[i].image_url)!;
            imageView.af_setImageWithURL(url, placeholderImage:UIImage(named: "noDataIcon"));
            imageView.tag = Int(10000 + i);
            imageView.addTarget(imageView, targe: LicaiViewController(), action: Selector("PushDetailView:"));
            ScrollView.addSubview(imageView)
        }
        pageView.numberOfPages = model.count;
        pageView.currentPage = 0;
    }
    
    
    //设置推荐产品的数据
    func setRecommend(model:RecommendModel){
        Lable1.text = model.rec_name;
        if (model.rec_attr == "1"){
            Lable2.text = "额外收益\(model.rec_supplement)%";
            Lable2.layer.borderWidth = 1;
            Lable2.layer.cornerRadius = 2;
        }
        let lable3t = NSMutableAttributedString(string: "项目期限 \(model.rec_duration)天", attributes: [NSFontAttributeName:Font_Size_15]);
            lable3t.addAttribute(NSForegroundColorAttributeName, value: ColorHexString(APP_FONT_C_4), range: NSRange(location: 0,length: 4))
            Lable3.attributedText = lable3t;
        let lable4t = NSMutableAttributedString(string: "起投金额 \(model.rec_borrow_min)元", attributes: [NSFontAttributeName:Font_Size_15]);
            lable4t.addAttribute(NSForegroundColorAttributeName, value: ColorHexString(APP_FONT_C_4), range: NSRange(location: 0,length: 4))
            Lable4.attributedText = lable4t;
        let labstr5:NSString = "\(model.rec_rate)%";
        let range = labstr5.rangeOfString("%");
        let lable5t = NSMutableAttributedString(string: labstr5 as String, attributes: [NSFontAttributeName:Font_Size_59]);
        lable5t.addAttribute(NSFontAttributeName, value: Font_Size_15, range: range)
        Lable5.attributedText = lable5t;
    }

   
}

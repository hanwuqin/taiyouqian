//
//  licaiViewViewController.swift
//  taiyouqian
//
//  Created by 郭二强 on 15/12/15.
//  Copyright © 2015年 郭二强. All rights reserved.
//

import UIKit
import SnapKit
class licaiViewController: UIViewController,UIScrollViewDelegate,UITableViewDelegate,UITableViewDataSource {
    var dataTable:UITableView!;
    var ScrollView:UIScrollView!;
    var PageView:UIPageControl!;
    override func viewDidLoad() {
        super.viewDidLoad()
        initView();
        setLicaiNav();
    }
    
    /**
     * @desc UI 初始化
    */
    func initView(){
        self.title = "理财";
        createTable();
    }
    
    func setLicaiNav(){
        let letBtn = UIBarButtonItem(title: "登录", style: UIBarButtonItemStyle.Plain, target: self, action: Selector("pushLogin"));
        self.navigationItem.leftBarButtonItem = letBtn;
        
    }
    
    
    func pushLogin(){
        let loginVC = loginViewViewController();
        self.navigationController?.pushViewController(loginVC, animated: false);
    }
    
    
    /**
     * @desc 创建UItabView
     */
    func createTable(){
        dataTable=UITableView(frame: CGRectMake(0, 0, M_S_B_W, (M_S_B_H-49)),style:UITableViewStyle.Plain);
        //dataTable.backgroundColor = ColorHexString(C_1);
        dataTable.separatorStyle = UITableViewCellSeparatorStyle.None;
        dataTable.delegate = self;
        dataTable.dataSource = self;
        self.view.addSubview(dataTable);
        setScrllView();
    }
    //返回2个Section
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2;
    }
    
    //返回行数
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        if(section == 0){
            return 1;
        }else{
            return 1;
        }
    }
    
    //1.3 返回行高
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat{
        
        if(indexPath.section == 0){
            return 315 * SCALE_Y;
        }else{
            return 80 * SCALE_Y;
        }
    }
    
    //1.4每组的头部高度
    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if(section == 0){
            return 1;
        }else{
            return 1
        }
    }
    
    //1.5每组的底部高度
    func tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 1;
    }
    //实现
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let identifier="identtifier";
        var cell=tableView.dequeueReusableCellWithIdentifier(identifier);
        if(cell == nil){
            cell=UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: identifier);
        }
        cell?.selectedBackgroundView = UIView();
        cell?.selectedBackgroundView?.backgroundColor = UIColor.clearColor();
        if(indexPath.section == 0){
            setModdleView(cell!);
        }else{
            SetCellView(cell!);
        }
        //cell?.accessoryType=UITableViewCellAccessoryType.DisclosureIndicator;
        return cell!;
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath){
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }
    
    //轮播图
    func setScrllView(){
        let HeadView = UIView();
        let ScrollView = UIScrollView();
        let pageView = UIPageControl();
        print(UIScreen.mainScreen().bounds);
        HeadView.frame = CGRectMake(0, 0, I_P_6_W * SCALE_X , 160 * SCALE_Y);
        dataTable.tableHeaderView = HeadView;
        
        HeadView.addSubview(ScrollView);
        HeadView.addSubview(pageView);
        ScrollView.delegate = self;
        ScrollView.frame = HeadView.frame;
        ScrollView.pagingEnabled = true;
        ScrollView.showsHorizontalScrollIndicator = false;
        ScrollView.showsVerticalScrollIndicator = false;
        ScrollView.bounces = false;
        ScrollView.contentSize = CGSizeMake(M_S_B_W * 3, 0);
        for(var i = 0;i<3;i++){
            let imageView = UIImageView(frame: CGRectMake(HeadView.frame.width * CGFloat(i), 0, HeadView.frame.width, HeadView.frame.height));
            imageView.image = UIImage(named: "guideBg\(i)");
            ScrollView.addSubview(imageView)
        }
        pageView.frame = CGRectMake(315 * SCALE_X/2, 130 * SCALE_Y, 60 * SCALE_X, 20);
        pageView.numberOfPages = 3;
        pageView.currentPage = 0;
        pageView.currentPageIndicatorTintColor = UIColor.whiteColor();
        self.PageView = pageView;
        self.ScrollView = ScrollView;
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        //这里的代码是在ScrollView滚动后执行的操作，并不是执行ScrollView的代码；
        //这里只是为了设置下面的页码提示器；该操作是在图片滚动之后操作的；
        let scrollviewW:CGFloat = scrollView.frame.size.width;
        let x:CGFloat = scrollView.contentOffset.x;
        let page:Int = (Int)((x + scrollviewW / 2) / scrollviewW);
        self.PageView.currentPage = page;
    }
    
    func setModdleView(cell:UITableViewCell){
        let Lable1  = UILabel();
        let Lable2  = UILabel();
        let Lable3  = UILabel();
        let Button = UIButton();
        let View = UIView();
        cell.contentView.addSubview(Lable1);
        cell.contentView.addSubview(Lable2);
        cell.contentView.addSubview(Lable3);
        cell.contentView.addSubview(View);
        cell.contentView.addSubview(Button);
        Lable1.text = "金蟾宝月结息";
        Lable2.text = "额外收益5%";
        Lable3.text = "333";
        Lable1.textColor = ColorHexString(FONT_C_1);
        Lable1.font = UIFont(name: FONT_NAME, size: FONT_SIZE_1);
        Lable2.textColor = ColorHexString(FONT_C_2);
        Lable2.font = UIFont(name: FONT_NAME, size: FONT_SIZE_1);
        Lable2.layer.borderColor = UIColor.redColor().CGColor;
        Lable2.layer.borderWidth = 1;
        
        View.layer.cornerRadius = 170 * SCALE_Y/2;
        View.layer.borderColor = UIColor.redColor().CGColor;
        View.layer.borderWidth = 3;
        Button.backgroundColor = ColorHexString(BUTTON_C_1);
        Button.layer.cornerRadius = 5;
        Button.setTitle("立即抢购", forState: UIControlState.Normal);
        Lable1.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(15 * SCALE_Y);
            make.left.equalTo(13 * SCALE_Y);
        }
        Lable2.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(15 * SCALE_Y);
            make.left.equalTo(Lable1.snp_right).offset(10);
        }
        
        View.snp_makeConstraints { (make) -> Void in
            make.width.height.equalTo(170 * SCALE_Y);
            make.top.equalTo(Lable2.snp_bottom).offset(9);
            make.centerX.equalTo(cell);
        }
        
        Button.snp_makeConstraints { (make) -> Void in
            make.left.equalTo(15);
            make.right.equalTo(-15);
            make.bottom.equalTo(-20);
            make.height.equalTo(45);
        }

    
    }
    
    
    
    //设置imageView
    func SetCellView(cell:UITableViewCell){
        let ImageView = UIImageView();
        let TextLable = UILabel();
        let detailTextLable = UILabel();
        ImageView.image = UIImage(named: "laihama");
        //ImageView.contentMode = UIViewContentMode.Center;
        TextLable.text = "金蟾宝";
        TextLable.textColor = ColorHexString(FONT_C_1);
        TextLable.font = UIFont(name: FONT_NAME, size: FONT_SIZE_1);
        detailTextLable.text = "金融资产项目";
        detailTextLable.textColor = ColorHexString(FONT_C_2);
        detailTextLable.font = UIFont(name: FONT_NAME, size: FONT_SIZE_2);
        cell.accessoryType=UITableViewCellAccessoryType.DisclosureIndicator;
        cell.backgroundColor = ColorHexString(C_1);
        cell.contentView.addSubview(ImageView);
        cell.contentView.addSubview(TextLable);
        cell.contentView.addSubview(detailTextLable);
        
        ImageView.snp_makeConstraints { (make) -> Void in
            make.width.height.equalTo(56 * SCALE_Y);
            make.left.top.equalTo(12 * SCALE_Y);
        }
        TextLable.snp_makeConstraints { (make) -> Void in
            print(ImageView.snp_width);
            make.left.equalTo(ImageView.snp_right).offset(10 * SCALE_Y);
            make.top.equalTo(22 * SCALE_Y);
        }
        detailTextLable.snp_makeConstraints { (make) -> Void in
            make.left.equalTo(ImageView.snp_right).offset(10 * SCALE_Y);
            make.bottom.equalTo(-22 * SCALE_Y);
        }

        
    }

  
}

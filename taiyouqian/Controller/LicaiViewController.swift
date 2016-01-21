//
//  licaiViewViewController.swift
//  taiyouqian
//
//  Created by 郭二强 on 15/12/15.
//  Copyright © 2015年 郭二强. All rights reserved.
//

import UIKit
import SnapKit
class LicaiViewController: BaseViewController{
    
    var advemapModel:AdvemapModel!;
    var recommendlModel:RecommendModel! = RecommendModel();
    var licaiView:LiCaiView = LiCaiView();
    override func viewDidLoad(){
        super.viewDidLoad()
        self.title = "理财";
        //初始化UI
        licaiView.InitView(self.view);
        licaiView.dataTable.delegate = self;
        licaiView.dataTable.dataSource = self;
        licaiView.ScrollView.delegate = self;
        self.setupRefresh();
        //初始化数据
        initData();
        self.setNavLetButton(self.navigationItem, target: self, action: Selector("PushLogin"));
    }
    
    func PushLogin(){
        let loginView = LoginViewViewController();
        self.navigationController?.pushViewController(loginView, animated: true);
    }
    
    
//    //进入产品列表页面
//    func pushPblistView(){
//        let PblistVC = PblistTableViewController();
//        self.navigationController?.pushViewController(PblistVC, animated: true);
//        self.HideBottomView();
//    }
    
    
    //进入webView 页面
    func PushDetailView(control:UIControl){
        var tag = control.tag;
        tag = tag - 10000;
        let url = advemapModel.imagelist[tag].url;
        print(url);
        let title = advemapModel.imagelist[tag].title;
        print(title);
        self.PushWebViewController(url, title: title);
    }
    
    //进入webView 页面
    func PushViewC(){
        let url = recommendlModel.rec_url;
        let title = recommendlModel.rec_name;
        if(url != ""){
            self.PushWebViewController(url, title: title);
        }

    }
    
    //初始化数据
    func initData(){
        self.noticeOnlyText("正在加载中...", autoUI: true);
        HttpPostAPI.instance.ServerApi_advemapApi({ (model) -> Void in
            self.advemapModel = model;
            self.licaiView.setImageList(model.imagelist);
            self.licaiView.dataTable.headerEndRefreshing()
            self.clearAllNotice();
            }) { (error) -> Void in
                self.fail(error)
                self.licaiView.dataTable.headerEndRefreshing()
        }
        HttpPostAPI.instance.ServerApi_recommend({ (model) -> Void in
            self.recommendlModel = model;
            self.licaiView.setRecommend(model);
            self.licaiView.dataTable.headerEndRefreshing()
            self.clearAllNotice();
            }) { (error) -> Void in
                self.fail(error)
                self.licaiView.dataTable.headerEndRefreshing()
        }
    }

    
    //上拉刷新数据
    func setupRefresh(){
        licaiView.dataTable.addHeaderWithCallback({
            self.initData();
        })
    }
    
}
//实现uiscrollView代理
extension LicaiViewController: UIScrollViewDelegate{
    func scrollViewDidScroll(scrollView: UIScrollView) {
        //这里的代码是在ScrollView滚动后执行的操作，并不是执行ScrollView的代码；
        //这里只是为了设置下面的页码提示器；该操作是在图片滚动之后操作的；
        let scrollviewW:CGFloat = scrollView.frame.size.width;
        let x:CGFloat = scrollView.contentOffset.x;
        let page:Int = (Int)((x + scrollviewW / 2) / scrollviewW);
        licaiView.pageView.currentPage = page;
    }
    
}
//实现tableView 代理
extension LicaiViewController: UITableViewDelegate{
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
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if(indexPath.section == 1){
            
            self.PushViewController(PblistTableViewController());
        }
    }
    
}
//实现数据源
extension LicaiViewController: UITableViewDataSource{
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

    
    //实现
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let identifier="identtifier";
        var cell=tableView.dequeueReusableCellWithIdentifier(identifier);
        if(cell == nil){
            cell=UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: identifier);
        }
        cell!.selectionStyle = UITableViewCellSelectionStyle.None;
        //cell!.selectionStyle = UITableViewCellSelectionStyle.None;
        if(indexPath.section == 0){
            self.licaiView.setModdleView(cell!);
        }else{
            self.licaiView.SetCellView(cell!);
        }
        //cell?.accessoryType=UITableViewCellAccessoryType.DisclosureIndicator;
        return cell!;
    }
    
}


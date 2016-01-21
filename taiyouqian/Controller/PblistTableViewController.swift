//
//  PblistTableViewController.swift
//  taiyouqian
//
//  Created by 郭二强 on 16/1/5.
//  Copyright © 2016年 郭二强. All rights reserved.
//

import UIKit

class PblistTableViewController: BaseViewController {
    
    var jcbModel:Array<PbistModel>! = [];
    var jcbView:JcbPblistView = JcbPblistView();
    var page:String = "1";
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setNavLetButton(self.navigationItem);
        self.title = "金蟾宝";
        
        initData();
        self.jcbView.InitView(self.view);
        self.jcbView.dataTable.delegate = self;
        self.jcbView.dataTable.dataSource = self;
        self.setupRefresh();
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //上拉刷新数据
    func setupRefresh(){
        self.jcbView.dataTable.addHeaderWithCallback({
            self.initData();
        })
    }
    
    //加载数据
    func initData(){
        self.noticeOnlyText("正在加载中...", autoUI: true);
        HttpPostAPI.instance.ServerApi_pblist(self.page, scuess: { (model) -> Void in
            self.jcbModel = model.pblist;
            self.jcbView.dataTable.reloadData();
            self.jcbView.dataTable.headerEndRefreshing()
            self.clearAllNotice();
            }) { (error) -> Void in
                self.fail(error)
        }
    }

 
}
//实现协议
extension PblistTableViewController:UITableViewDelegate{
    //1.3 返回行高
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat{
        return 135 * SCALE_Y;
    }
    
    //1.4每组的头部高度
//    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
//        return 10;
//    }
    
//    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
//        if(indexPath.section == 1){
//            //pushPblistView();
//        }
//    }

}
//实现协议
extension PblistTableViewController:UITableViewDataSource{
    //返回2个Section
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1;
    }
    
    
    //返回行数
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return self.jcbModel.count;
    }
    
    
    //实现
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let identifier="jcbpblist1";
        var cell = tableView.dequeueReusableCellWithIdentifier(identifier) as? ListTableViewCell;
        if(cell == nil){
           cell = ListTableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: identifier);
       }
        jcbView.setCellData(cell!,datamodel: jcbModel[indexPath.row]);
        return cell!
    }
}


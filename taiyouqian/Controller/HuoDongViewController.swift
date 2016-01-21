//
//  huoDongViewController.swift
//  taiyouqian
//
//  Created by 郭二强 on 15/12/15.
//  Copyright © 2015年 郭二强. All rights reserved.
//

import UIKit

class HuoDongViewController: BaseViewController {
    
    //视图
    let huoDongView = HuodongView();
    override func viewDidLoad() {
        super.viewDidLoad()
        huoDongView.InitView(self.view);
        huoDongView.dataTable.delegate = self;
        huoDongView.dataTable.dataSource = self;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
//实现协议
extension HuoDongViewController:UITableViewDelegate{
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
extension HuoDongViewController:UITableViewDataSource{
    //返回2个Section
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1;
    }
    
    
    //返回行数
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return 3;
    }
    
    
    //实现
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let identifier="Huodongcell";
        var cell = tableView.dequeueReusableCellWithIdentifier(identifier) as? HuodongTableViewCell;
        if(cell == nil){
            cell = HuodongTableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: identifier);
        }
        print("111");
        //jcbView.setCellData(cell!,datamodel: jcbModel[indexPath.row]);
        return cell!
    }
}

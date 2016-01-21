//
//  ziChanViewController.swift
//  taiyouqian
//
//  Created by 郭二强 on 15/12/15.
//  Copyright © 2015年 郭二强. All rights reserved.
//

import UIKit

class ZiChanViewController: BaseViewController {

    var ziChanView = ZiChanView();
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ziChanView.baseView = self.view;
        ziChanView.initView();
        self.setupRefresh();
    }

    //上拉刷新数据
    func setupRefresh(){
        ziChanView.dataTableView.addHeaderWithCallback({
           // self.initData();
        })
    }

    func PushViewVC(){
        print("点击事件");
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

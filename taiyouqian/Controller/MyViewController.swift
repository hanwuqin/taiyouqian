//
//  myViewController.swift
//  taiyouqian
//
//  Created by 郭二强 on 15/12/15.
//  Copyright © 2015年 郭二强. All rights reserved.
//

import UIKit

class MyViewController: BaseViewController {
    
    var myView:MyView = MyView();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myView.BaseView = self.view;
        myView.InitView();
        self.setupRefresh();
    }


    //上拉刷新数据
    func setupRefresh(){
        myView.dataTableView.addHeaderWithCallback({
            // self.initData();
        })
    }

    
    func PushViewVC(Btn:UIButton){
        print(Btn.tag);
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

  
}

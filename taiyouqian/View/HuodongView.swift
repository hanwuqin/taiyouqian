//
//  jcbPblistView.swift
//  taiyouqian
//
//  Created by 郭二强 on 16/1/15.
//  Copyright © 2016年 郭二强. All rights reserved.
//

import UIKit

class HuodongView: UIView {
    
    var dataTable:UITableView!;
    
    //创建UItableView
    func InitView(ContentView:UIView){
        self.dataTable = UITableView(frame: CGRectMake(0, 0, M_S_B_W, (M_S_B_H-STATUS_BAR_H)),style:UITableViewStyle.Plain);
      //  self.dataTable = UITableView();
        self.dataTable.separatorStyle = UITableViewCellSeparatorStyle.None;
        self.dataTable.backgroundColor = ColorHexString(APP_BG_C_5);
        ContentView.addSubview(self.dataTable);
        
//        self.dataTable.snp_makeConstraints { (make) -> Void in
//            make.edges.equalTo(ContentView).inset(UIEdgeInsetsMake(0, 0, 0, 0));
//        }
    }
    
    
}

class HuodongTableViewCell: UITableViewCell {
    
    var view = UIView()
    var ImgView = UIImageView()
    var Lable = UILabel()
    override init(style: UITableViewCellStyle, reuseIdentifier: String!) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.contentView.addSubview(view);
        view.addSubview(ImgView)
        view.addSubview(Lable)
        self.selectionStyle = UITableViewCellSelectionStyle.None;
        self.backgroundColor = ColorHexString(APP_BG_C_5);
        self.setAutoLayout();
        
        
        view.backgroundColor = UIColor.whiteColor();
        ImgView.backgroundColor = UIColor.greenColor();
        ImgView.image = UIImage(named: "noDataIcon");
        Lable.backgroundColor = UIColor.redColor();
        Lable.text = "111";
        
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setAutoLayout(){
       view.snp_makeConstraints { (make) -> Void in
         make.edges.equalTo(self.contentView).inset(UIEdgeInsetsMake(12, 12, 0, 12))
        }
       ImgView.snp_makeConstraints { (make) -> Void in
        make.edges.equalTo(view).inset(UIEdgeInsetsMake(0, 0, 33, 0))
        
        }
        Lable.snp_makeConstraints { (make) -> Void in
            make.left.equalTo(12);
            make.top.equalTo(ImgView.snp_bottom).offset(7);
        }
    }
    
}


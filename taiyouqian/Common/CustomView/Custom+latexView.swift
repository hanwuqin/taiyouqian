//
//  Custom+latexView.swift
//  taiyouqian
//
//  Created by 郭二强 on 16/1/19.
//  Copyright © 2016年 郭二强. All rights reserved.
//

import UIKit

//自定义九宫格视图
class Custom_latexView: UIView {

    public var image:UIImage!;
    public var lable:UILabel!;
    public var size:CGSize!;
    private var control:UIControl!;
    private var imageView:UIImageView!;

    //初始化
    init(lable:UILabel,image:UIImage,size:CGSize) {
        super.init(frame: CGRectZero)
        self.lable = lable;
        self.image = image;
        self.size = size;
        self.initView();
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func initView(){
        imageView = UIImageView();
        imageView.image = image;
        self.addSubview(lable);
        self.addSubview(imageView);

        imageView.snp_makeConstraints { (make) -> Void in
            make.centerX.equalTo(self.center.x);
        }
        lable.snp_makeConstraints { (make) -> Void in
            //make.left.equalTo(20);
            make.left.right.top.bottom.equalTo(20);
        }
    }
    
    func addtarget(){}
    
}

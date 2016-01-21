//
//  CommonView.swift
//  taiyouqian
//
//  Created by 郭二强 on 16/1/17.
//  Copyright © 2016年 郭二强. All rights reserved.
//


//创建lable
func ex_UIlable(title:String,color:String,font:UIFont)->UILabel{
    let lable = UILabel();
    lable.text = title;
    lable.font = font;
    lable.textColor = ColorHexString(color);
    return lable;
}
//划线
func ex_UIView_line(color:String) -> UIView{
    let line = UIView();
    line.backgroundColor = ColorHexString(color);
    return line;
}


//上下图片文字按钮
func ex_UIButton(image:UIImage!,title:String,color:String,font:UIFont)->UIButton{
    let lable = ex_UIlable(title, color: color, font: font);
    let imageView = UIImageView()
    let button = UIButton();

    imageView.image = image;
    button.addSubview(imageView);
    button.addSubview(lable);
    
    imageView.snp_makeConstraints { (make) -> Void in
        make.left.equalTo(button.snp_left).offset(10);
        //make.bottom.equalTo(button.center.y).offset(0);
    }
//    lable.snp_makeConstraints { (make) -> Void in
//        make.top.equalTo(button.center.y).offset(-13 * SCALE_Y);
//    }
//    button.snp_makeConstraints { (make) -> Void in
//        make.width.height.equalTo(M_S_B_W/4);
//    }
    return button;

}
//
//  advemapModel.swift
//  taiyouqian
//
//  Created by 郭二强 on 16/1/7.
//  Copyright © 2016年 郭二强. All rights reserved.
//

import Foundation
@objc(ImageListModel)
class ImageListModel: D3Model {
    var image_type:String = "";
    var image_url:String = "";
    var rec_borrow_min:String = "";
    var rec_duration:String = ""
    var rec_name:String = ""
    var rec_pid:String = ""
    var rec_rate:String = ""
    var title:String = ""
    var url:String = ""
}
@objc(AdvemapModel)
class AdvemapModel: D3Model {
    var RespCode : String = "";
    var RespDesc : String = "";
    var imagelist : Array<ImageListModel>!
}

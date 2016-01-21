//
//  HttpPostAPI.swift
//  taiyouqian
//
//  Created by 郭二强 on 16/1/6.
//  Copyright © 2016年 郭二强. All rights reserved.
//

import Foundation
import UIKit
class HttpPostAPI {
    static let instance = HttpPostAPI() //这个位置使用 static，static修饰的变量会懒加载
    
    //调用轮播图API
    func ServerApi_advemapApi(scuess:(AdvemapModel)->Void,fail:(String)->Void){
        var Parameter = ["CmdId":"advemap"];
        Parameter = LibraryAPI.instance.getPublicParam(Parameter);
        let Url = LibraryAPI.instance.ServerApi_2! + "Apiwiki/advemap";
        LibraryAPI.instance.apiHttpPost(Parameter, url: Url, sucess: { (res) -> Void in
            let result:AdvemapModel = AdvemapModel.jsonToModel(res);
                //成功回调
                scuess(result);
            },fail: {(error) -> Void in
                fail("网络不给力！");
        })
    }
    
    //推荐产品API
    func ServerApi_recommend(scuess:(RecommendModel)->Void,fail:(String)->Void){
        var Parameter = ["CmdId":"recommend"];
        Parameter = LibraryAPI.instance.getPublicParam(Parameter);
        let Url = LibraryAPI.instance.ServerApi_2! + "Apiwiki/recommend";
        LibraryAPI.instance.apiHttpPost(Parameter, url: Url, sucess: { (res) -> Void in
            let result:RecommendModel = RecommendModel.jsonToModel(res);
            //成功回调
            scuess(result);
            },fail: {(error) -> Void in
                fail("网络不给力！");
        })
    }
    
    //金蟾宝列表Version CmdId page time sign
    func ServerApi_pblist(page:String,scuess:(JcbPblistModel)->Void,fail:(String)->Void){
        var Parameter = ["CmdId":"pblist","page":page];
        Parameter = LibraryAPI.instance.getPublicParam(Parameter);
        let Url = LibraryAPI.instance.ServerApi_1! + "public/pblist";
        LibraryAPI.instance.apiHttpPost(Parameter, url: Url, sucess: { (res) -> Void in
            let result:JcbPblistModel = JcbPblistModel.jsonToModel(res);
            //成功回调
            scuess(result);
            },fail: {(error) -> Void in
                fail("网络不给力！");
        })
    }

    
    
    
    
}

//
//  LibraryAPI.swift
//  taiyouqian
//
//  Created by 郭二强 on 16/1/7.
//  Copyright © 2016年 郭二强. All rights reserved.
//

import Foundation
import Alamofire
import CryptoSwift
class LibraryAPI {
    static let instance = LibraryAPI() //这个位置使用 static，static修饰的变量会懒加载
    //let isOnLine = true
    let ServerApi_1:String?
    let ServerApi_2:String?
    let KeyA:String?
    let KeyB:String?
    
    private init(){
        if(ISONLIEN){
            self.ServerApi_1 = SERVER_API_PRO_1
            self.ServerApi_2 = SERVER_API_PRO_2
        }else{
            self.ServerApi_1 = SERVER_API_DEV_1
            self.ServerApi_2 = SERVER_API_DEV_2
        }
        self.KeyA = KEYA;
        self.KeyB = KEYB;
    }
    
    //对传输的参数进行排序
    private func paramSign(var Parameter:Dictionary< String, String >) -> Dictionary<String,String>{
        var paramKey = self.getParamKey(Parameter);
        var sign:String = self.KeyA!;
        paramKey = paramKey.sort();
        for key in paramKey {
            sign += Parameter[key]!;
            
        }
        sign += self.KeyB!;
        sign = sign.md5();
        Parameter["sign"] = sign;
        return Parameter;
    }
    
    //获取传递参数的key
    private func getParamKey(Parameter:Dictionary<String,String>) -> Array<String>{
        var paramKey:[String] = [];
        for (key,_) in Parameter {
            paramKey.append(key);
        }
        return paramKey;
    }
    
    
    //获取请求接口的参数
    func getPublicParam(var Parameter:Dictionary< String, String >) ->Dictionary<String,String>{
        let time = stringToTimeStamp();
        Parameter["Verson"] = "10";
        Parameter["time"] = time;
        Parameter["sytem_verson"] = S_V;
        Parameter["Source"] = SOURCE;
        Parameter = self.paramSign(Parameter);
        return Parameter;
    }

    //发送POST请求接口
    func apiHttpPost(Parameter:Dictionary<String,String>,url:String,sucess:(AnyObject)->Void,fail:(NSError)->Void){
        let request = Alamofire.request(.POST,url, parameters: Parameter);
        request.responseJSON { (response) -> Void in
            if(response.result.isSuccess){
                sucess(response.result.value!);
            }else{
                print(response.result.error!.localizedDescription);
                fail(response.result.error!);
            }
        }
    }
   
}
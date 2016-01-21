//
//  JcbPblist.swift
//  taiyouqian
//
//  Created by 郭二强 on 16/1/15.
//  Copyright © 2016年 郭二强. All rights reserved.
//

import Foundation
@objc(PbistModel)
class PbistModel: D3Model {
    var ProId:String = ""; //产品主键
    var PrdName:String = ""; //产品名称
    var StandardAnnual:String = ""; //标准收益率
    var SupplementaryAnnual:String = "" //浮动收益率
    var Investunit:String = "" //起购金额
    var ProductActivity:String = "" //活动属性
    var InvestmentTime:String = "" //投资期限
    var Profitday:String = "" //起息日期
    var Offprofitday:String = "" //结息日期
    var InvestmentCapital:String = "" //资金投向
    var ProDetailUrl:String = "" //产品详情URL
}
@objc(JcbPblistModel)
class JcbPblistModel: D3Model {
    var RespCode : String = "";
    var RespDesc : String = "";
    var page:String = "";
    var PageSize:String = "";
    var pblist : Array<PbistModel>!
}




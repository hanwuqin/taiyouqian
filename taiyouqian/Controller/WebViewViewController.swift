//
//  WebViewViewController.swift
//  taiyouqian
//
//  Created by 郭二强 on 16/1/13.
//  Copyright © 2016年 郭二强. All rights reserved.
//

import UIKit

class WebViewViewController: BaseViewController {
    var webUrl:String!;
    var webTitle:String!;
    var webView:UIWebView!;
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = self.webTitle;
        self.setNavLetButton(self.navigationItem);
        setWebView();
    }
    
    func setWebView(){
        webView = UIWebView();
        self.view.addSubview(webView);
        webView.delegate = self;
        webView.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(0);
            make.left.equalTo(0);
            make.right.equalTo(0);
            make.bottom.equalTo(0);
        }
        let url = NSURL(string: self.webUrl);
        let urlRequest = NSURLRequest(URL :url!);
        webView.loadRequest(urlRequest)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
extension WebViewViewController:UIWebViewDelegate{
    
    func webViewDidStartLoad(webView: UIWebView) {
        self.pleaseWait();
    }
    func webViewDidFinishLoad(webView: UIWebView) {
        self.clearAllNotice();
    }
}

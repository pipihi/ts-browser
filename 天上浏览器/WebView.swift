//
//  WebView.swift
//  天上浏览器
//
//  Created by Beauty-jishu on 2018/11/21.
//  Copyright © 2018年 Beauty-jishu. All rights reserved.
//

import Foundation
import WebKit

let js = """
console.log(“......”)
document.body.style.display="backgroud:#ff0000";
"""

public class WebView :WKWebView {
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
        let config = self.configuration
        
        config.userContentController .addUserScript(WKUserScript(source: js, injectionTime: .atDocumentStart, forMainFrameOnly: false))

//        WKWebViewConfiguration *config = [[WKWebViewConfiguration alloc] init];
//        config.userContentController = [[WKUserContentController alloc] init];
//        NSString *js = @"function myAlert() {\
//        alert('这就是js啊');\
//    }";
//    WKUserScript *jsUserScript = [[WKUserScript alloc] initWithSource:js injectionTime:WKUserScriptInjectionTimeAtDocumentStart forMainFrameOnly:NO];
//    [config.userContentController addUserScript:jsUserScript];
//

        self.load(URLRequest(url: URL(string: "http://codbo.cn")!));
    }

}

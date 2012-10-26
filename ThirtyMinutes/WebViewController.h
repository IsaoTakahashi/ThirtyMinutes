//
//  WebViewController.h
//  ThirtyMinutes
//
//  Created by 高橋 勲 on 2012/10/26.
//  Copyright (c) 2012年 高橋 勲. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebViewController : UIViewController<UIWebViewDelegate> {
    NSURL *url;
}

@property (strong, nonatomic) NSURL *url;
@property (weak, nonatomic) IBOutlet UIWebView *WebView;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *WebIndicator;
@end

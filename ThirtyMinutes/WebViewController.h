//
//  WebViewController.h
//  ThirtyMinutes
//
//  Created by 高橋 勲 on 2012/10/26.
//  Copyright (c) 2012年 高橋 勲. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebViewController : UIViewController<UIWebViewDelegate> {
    //target URL
    NSURL *url;
}

// there are syntax
@property (strong, nonatomic) NSURL *url; //instance property
@property (weak, nonatomic) IBOutlet UIWebView *WebView; //Storyboard property
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *WebIndicator; //Storyboard property
@end

//
//  WebViewController.m
//  ThirtyMinutes
//
//  Created by 高橋 勲 on 2012/10/26.
//  Copyright (c) 2012年 高橋 勲. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController ()

@end

@implementation WebViewController
@synthesize url;
@synthesize WebView;
@synthesize WebIndicator;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    //TODO: 指定されたURLのサイトをロード
    NSURLRequest* request = [[NSURLRequest alloc] initWithURL:url];
    WebView.delegate = self;
    [WebView loadRequest:request];
}

- (void)viewDidUnload
{
    [self setWebView:nil];
    [self setWebIndicator:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

-(void)webViewDidStartLoad:(UIWebView*)webView{
    [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
    [WebIndicator startAnimating];
}

-(void)webViewDidFinishLoad:(UIWebView *)webView{
    [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
    [WebIndicator stopAnimating];
}

@end

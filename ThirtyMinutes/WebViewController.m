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

// you have to synthesize to be access syntax from external
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

//This method is called when the interface linked to this class in Storyboard is loaded
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    //Create request information and load in WebView
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


#pragma mark -
#pragma mark WebViewDelegate
-(void)webViewDidStartLoad:(UIWebView*)webView{
    //Show Animating Indicator
    [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
    [WebIndicator startAnimating];
}

-(void)webViewDidFinishLoad:(UIWebView *)webView{
    //Stop Animating Indicator
    [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
    [WebIndicator stopAnimating];
}

@end

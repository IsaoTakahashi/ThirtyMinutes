//
//  ViewController.m
//  ThirtyMinutes
//
//  Created by 高橋 勲 on 2012/10/26.
//  Copyright (c) 2012年 高橋 勲. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}


- (IBAction)ClickedButton:(id)sender {
    UIAlertView* alert = [[UIAlertView alloc] initWithTitle:@"Alert" message:@"you clicked button." delegate:nil cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
    [alert show];
}
@end

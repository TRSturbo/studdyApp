//
//  FirstViewController.m
//  studdy c
//
//  Created by Aaron Tharpe on 10/14/14.
//  Copyright (c) 2014 Fantastic4. All rights reserved.
//

#import "FirstViewController.h"
#import "LoginScreen.h"

@interface FirstViewController ()

@end

@class LoginScreen;
LoginScreen *viewController;

@implementation FirstViewController

@synthesize userName;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [_logoutButton.layer setBorderWidth:1.0];
    [_logoutButton.layer setBorderColor:[[UIColor whiteColor] CGColor]];
    _logoutButton.layer.cornerRadius = 5;
    _logoutButton.clipsToBounds = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIStatusBarStyle) preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
}

- (void)addBlurToView:(UIView *)view {
    UIView *blurView = nil;
    
    if([UIBlurEffect class]) { // iOS 8
        UIBlurEffect *blurEffect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleExtraLight];
        blurView = [[UIVisualEffectView alloc] initWithEffect:blurEffect];
        blurView.frame = view.frame;
        
    } else { // workaround for iOS 7
        blurView = [[UIToolbar alloc] initWithFrame:view.bounds];
    }
    
    [blurView setTranslatesAutoresizingMaskIntoConstraints:NO];
    
    [view addSubview:blurView];
    [view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[blurView]|" options:0 metrics:0 views:NSDictionaryOfVariableBindings(blurView)]];
    [view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[blurView]|" options:0 metrics:0 views:NSDictionaryOfVariableBindings(blurView)]];
}


@end

//
//  LoginScreen.m
//  studdy c
//
//  Created by Aaron Tharpe on 10/23/14.
//  Copyright (c) 2014 Fantastic4. All rights reserved.
//

#import "LoginScreen.h"
#import "FirstViewController.h"

@interface LoginScreen ()

@end

@implementation LoginScreen


- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    if (textField == _usernameField && [_usernameField.text isEqualToString:@"Hello"]) {
        _passField.text = @"World";
    }
    return YES;
}

- (IBAction)loginButton:(id)sender{
    if ([_usernameField.text containsString:@"@"] && [_usernameField.text containsString:@".edu"] && [_passField.text isEqualToString:@"password"]) {
        NSLog(@"Got it");
        
        _passwordError.text = @"Success";
        
        
        UIStoryboard *storyboard = self.storyboard;
        FirstViewController *svc = [storyboard instantiateViewControllerWithIdentifier:@"TabBarController"];
        
        // Configure the new view controller here.
        
        [self presentViewController:svc animated:YES completion:nil];
        
    } else {
        NSLog(@"Nope");
        _passwordError.text = @"Error";
    }
}

- (IBAction)registerButton:(id)sender{

    if((_usernameField.text && _usernameField.text.length > 0) && [_usernameField.text containsString:@"@"] && [_usernameField.text containsString:@".edu"] && (_passField.text && _passField.text.length > 0)){
    
        [UIView animateWithDuration:0.2 animations:^(void) {
        _confirmPassword.alpha = 1;
        _confirmPasswordField.alpha = 1;
    }];
        
        [UIView animateWithDuration:0.2 animations:^(void) {
            _loginButton.alpha = 0;
        }];
        
        [UIView animateWithDuration:0.2 animations:^(void) {
            CGRect btFrame = _registerButton.frame;
            btFrame.origin.x = 122;
            btFrame.origin.y = 440;
            _registerButton.frame = btFrame;
        }];
    }
    
    if((_confirmPasswordField.text && _confirmPasswordField.text.length > 0) && [_passField.text isEqualToString:_confirmPasswordField.text]){
        UIStoryboard *storyboard = self.storyboard;
        FirstViewController *svc = [storyboard instantiateViewControllerWithIdentifier:@"TabBarController"];
        
        // Configure the new view controller here.
        
        [self presentViewController:svc animated:YES completion:nil];
    } else if ((_confirmPasswordField.text && _confirmPasswordField.text.length > 0) && ![_passField.text isEqualToString:_confirmPasswordField.text]){
        _passwordError.text = @"Error, mismatch password.";
    }
    
    

}

- (UIStatusBarStyle) preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
}

@end

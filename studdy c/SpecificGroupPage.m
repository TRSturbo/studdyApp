//
//  SpecificGroupPage.m
//  studdy c
//
//  Created by Aaron Tharpe on 10/26/14.
//  Copyright (c) 2014 Fantastic4. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SpecificGroupPage.h"


@interface SpecificGroupPage ()
@end


@implementation SpecificGroupPage

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    _groupMember1.layer.cornerRadius = 20;
    _groupMember1.clipsToBounds = YES;
    _groupMember2.layer.cornerRadius = 20;
    _groupMember2.clipsToBounds = YES;
    _groupMember3.layer.cornerRadius = 20;
    _groupMember3.clipsToBounds = YES;
    _groupMember4.layer.cornerRadius = 20;
    _groupMember4.clipsToBounds = YES;
    
    _leaveButton.layer.cornerRadius = 10;
    _leaveButton.clipsToBounds = YES;

}

@end
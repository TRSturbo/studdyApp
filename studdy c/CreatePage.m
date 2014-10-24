//
//  CreatePage.m
//  studdy c
//
//  Created by Aaron Tharpe on 10/24/14.
//  Copyright (c) 2014 Fantastic4. All rights reserved.
//

#import "CreatePage.h"

@interface CreatePage ()

@end

@implementation CreatePage

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _titlesArray  = @[@"CSCI 4800", @"CSCI 2670",
                      @"BIOL 1108", @"GEOG 1111"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// returns the number of 'columns' to display.
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
    
}

// returns the # of rows in each component..
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent: (NSInteger)component
{
    return 4;
    
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row   forComponent:(NSInteger)component
{
    return [self.titlesArray objectAtIndex:row];
}

- (UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view
{
    UILabel* tView = (UILabel*)view;
    if (!tView)
    {
        tView = [[UILabel alloc] init];
        [tView setFont:[UIFont fontWithName:@"Helvetica Neue" size:24]];
        [tView setTextColor:[UIColor whiteColor]];
        tView.textAlignment = NSTextAlignmentCenter;
        tView.numberOfLines=4;
    }
    tView.text=[_titlesArray objectAtIndex:row];
    return tView;
}


- (UIStatusBarStyle) preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
}

@end


//
//  CreatePage.h
//  studdy c
//
//  Created by Aaron Tharpe on 10/24/14.
//  Copyright (c) 2014 Fantastic4. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CreatePage : UIViewController

@property (strong, nonatomic) IBOutlet UIPickerView *picker;

@property (strong, nonatomic)          NSArray *titlesArray;

@end

//
//  Class1ViewController.h
//  studdy c
//
//  Created by Aaron Tharpe on 10/14/14.
//  Copyright (c) 2014 Fantastic4. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Class1ViewController : UIViewController <UIPickerViewDataSource,UIPickerViewDelegate, UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) IBOutlet UILabel *color;

@property (strong, nonatomic) IBOutlet UIPickerView *picker;

@property (strong, nonatomic)          NSArray *titlesArray;

@property (nonatomic, strong) IBOutlet UITableView *tableView;

@property (strong, nonatomic) IBOutlet UIButton *createGroup;

@property (strong, nonatomic) NSArray *content;

@property (strong, nonatomic) IBOutlet UILabel *createdGroup;

@property (strong, nonatomic) IBOutlet UIBarButtonItem *home;

@property (strong, nonatomic) IBOutlet UIButton *moreInfo;


@end


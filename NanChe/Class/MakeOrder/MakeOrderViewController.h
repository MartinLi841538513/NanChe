//
//  MakeOrderViewController.h
//  NanChe
//
//  Created by dongway on 14-2-12.
//  Copyright (c) 2014年 dongway. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MakeOrderViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
- (IBAction)categoryButtonAction:(id)sender;
- (IBAction)searchButtonAction:(id)sender;
@property (strong, nonatomic) IBOutlet UITextField *dishName;
@property (strong, nonatomic) IBOutlet UITableView *tableview;

@end

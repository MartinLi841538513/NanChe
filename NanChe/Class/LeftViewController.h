//
//  LeftViewController.h
//  NanChe
//
//  Created by dongway on 14-2-10.
//  Copyright (c) 2014年 dongway. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LeftViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>

@property (strong, nonatomic) IBOutlet UITableView *tableview;
@end

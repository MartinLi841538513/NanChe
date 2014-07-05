//
//  OrderViewController.h
//  NanChe
//
//  Created by dongway on 14-2-12.
//  Copyright (c) 2014年 dongway. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OrderViewController : UIViewController

@property (strong, nonatomic) IBOutlet UISegmentedControl *orderCategorySegmentedControl;
- (IBAction)segmentedControlStyle:(id)sender;

@end

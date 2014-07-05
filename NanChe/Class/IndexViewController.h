//
//  IndexViewController.h
//  NanChe
//
//  Created by dongway on 14-2-10.
//  Copyright (c) 2014年 dongway. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EScrollerView.h"

@interface IndexViewController : UIViewController<EScrollerViewDelegate>
- (IBAction)makeOrderAction:(id)sender;
- (IBAction)friendsAction:(id)sender;
- (IBAction)topicAction:(id)sender;
@property (strong, nonatomic) IBOutlet UIImageView *recommend1;
@property (strong, nonatomic) IBOutlet UIImageView *recommend2;

@property (strong, nonatomic) IBOutlet UILabel *notification;

@end




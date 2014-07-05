//
//  MakeOrderCell.h
//  NanChe
//
//  Created by dongway on 14-2-17.
//  Copyright (c) 2014年 dongway. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MakeOrderCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UIImageView *dishImg;
@property (strong, nonatomic) IBOutlet UILabel *dishName;
@property (strong, nonatomic) IBOutlet UILabel *dishPrice;
@property (strong, nonatomic) IBOutlet UIImageView *addButton;
@property (strong, nonatomic) IBOutlet UIImageView *reduceButton;
@property (strong, nonatomic) IBOutlet UIImageView *dishScore;
@property (strong, nonatomic) IBOutlet UILabel *dishCount;

@end

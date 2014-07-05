//
//  OrderViewController.m
//  NanChe
//
//  Created by dongway on 14-2-12.
//  Copyright (c) 2014年 dongway. All rights reserved.
//

#import "OrderViewController.h"

@interface OrderViewController ()

@end

@implementation OrderViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.orderCategorySegmentedControl.selectedSegmentIndex = 0;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)segmentedControlStyle:(id)sender
{
    NSInteger selectedSegmentIndex = [sender selectedSegmentIndex];
    if(selectedSegmentIndex == 0)
    {
        NSLog(@"当前订单");
    }
    else if(selectedSegmentIndex == 1)
    {
        NSLog(@"历史订单");
    }
}
@end

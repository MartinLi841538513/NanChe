//
//  LatestTopicViewController.m
//  NanChe
//
//  Created by dongway on 14-2-12.
//  Copyright (c) 2014年 dongway. All rights reserved.
//

#import "LatestTopicViewController.h"

@interface LatestTopicViewController ()

@end

@implementation LatestTopicViewController

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
    self.navigationItem.title = @"最新话题";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

//
//  TopicTabViewController.m
//  NanChe
//
//  Created by dongway on 14-2-12.
//  Copyright (c) 2014年 dongway. All rights reserved.
//

#import "TopicTabViewController.h"

@interface TopicTabViewController ()

@end

@implementation TopicTabViewController

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
    [self setSelectedIndex:1];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item
{
    if(item.tag == 0)
    {
        [self dismissViewControllerAnimated:YES completion:nil];
    }
    else if(item.tag == 1)
    {
        
    }
    else if(item.tag == 2)
    {
        
    }
    else if(item.tag == 3)
    {
    
    }
}
@end

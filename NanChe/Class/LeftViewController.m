//
//  LeftViewController.m
//  NanChe
//
//  Created by dongway on 14-2-10.
//  Copyright (c) 2014年 dongway. All rights reserved.
//

#import "LeftViewController.h"

@interface LeftViewController ()

@end

@implementation LeftViewController

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
    self.tableview.delegate = self;
    self.tableview.dataSource = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;
{
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSInteger row = [indexPath row];
    
    static NSString *cellIdentifier = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if(cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    if(row == 0)
    {
        cell.imageView.image = [UIImage imageNamed:@"DongWay72.png"];
        cell.textLabel.text = @"首页";
    }
    else if(row == 1)
    {
        cell.imageView.image = [UIImage imageNamed:@"DongWay72.png"];
        cell.textLabel.text = @"订餐";
    }
    else if(row == 2)
    {
        cell.imageView.image = [UIImage imageNamed:@"DongWay72.png"];
        cell.textLabel.text = @"好友";
    }
    else if(row == 3)
    {
        cell.imageView.image = [UIImage imageNamed:@"DongWay72.png"];
        cell.textLabel.text = @"话题";
    }
    else if(row == 4)
    {
        cell.imageView.image = [UIImage imageNamed:@"DongWay72.png"];
        cell.textLabel.text = @"轨迹";
    }
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSInteger row = [indexPath row];

    
    if(row == 0)
    {
        [[NSNotificationCenter defaultCenter] postNotificationName:@"showRootController" object:nil];
    }
    else if(row == 1)
    {
        [[NSNotificationCenter defaultCenter] postNotificationName:@"jumpToMakeOrderViewController" object:nil];
    }
    else if(row == 2)
    {
       [[NSNotificationCenter defaultCenter] postNotificationName:@"jumpToFriendsViewController" object:nil];
    }
    else if(row == 3)
    {
        [[NSNotificationCenter defaultCenter] postNotificationName:@"jumpToTopicsViewController" object:nil];
    }
    else if(row == 4)
    {
        [[NSNotificationCenter defaultCenter] postNotificationName:@"jumpToMapViewController" object:nil];
    }
}

@end

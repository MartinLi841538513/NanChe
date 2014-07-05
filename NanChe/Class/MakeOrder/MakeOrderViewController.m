//
//  MakeOrderViewController.m
//  NanChe
//
//  Created by dongway on 14-2-12.
//  Copyright (c) 2014年 dongway. All rights reserved.
//

#import "MakeOrderViewController.h"
#import "MakeOrderCell.h"
#import "OrderDetailViewController.h"

@interface MakeOrderViewController ()

@end

@implementation MakeOrderViewController

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
    if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0)
    {
        self.edgesForExtendedLayout = UIRectEdgeNone;
    }

    self.title = @"订餐";
    
    self.tableview.delegate = self;
    self.tableview.dataSource = self;
    [self.tableview setFrame:CGRectMake(0, 52,IphoneWidth , IphoneHeight-57)];
    
    UIImageView *dataStatisView = [[UIImageView alloc] initWithFrame:CGRectMake(0, IphoneHeight-55, IphoneWidth, 26)];
    [dataStatisView setBackgroundColor:[UIColor colorWithRed:127.0/255 green:127.0/250 blue:127.0/255 alpha:1]];
    dataStatisView.userInteractionEnabled = YES;
    UILabel *info = [[UILabel alloc] initWithFrame:CGRectMake(5, 3, 200, 20)];
    info.text = @"已点餐：3份，共计58元";
    
    UIButton *makeOrderButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [makeOrderButton setFrame:CGRectMake(220, 3, 90, 20)];
    [makeOrderButton setTitle:@"下单" forState:UIControlStateNormal];
    [makeOrderButton setBackgroundColor:[UIColor orangeColor]];
    [makeOrderButton addTarget:self action:@selector(gotoOrderDetailViewController) forControlEvents:UIControlEventTouchDown];
    
    [dataStatisView addSubview:info];
    [dataStatisView addSubview:makeOrderButton];
    [self.view addSubview:dataStatisView];
}

-(void)viewWillAppear:(BOOL)animated
{
   self.navigationController.navigationBarHidden = YES;

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;
{
    return 15;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSInteger row = [indexPath row];
    static NSString *cellIdentifier = @"Cell";
    MakeOrderCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if(cell == nil)
    {
        cell = [[[NSBundle mainBundle] loadNibNamed:@"MakeOrderCell" owner:self options:nil] lastObject];
    }
    
    cell.addButton.tag = row;
    cell.reduceButton.tag = row ;
    
    UITapGestureRecognizer *addTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(addDishCountAction:)];
    [cell.addButton addGestureRecognizer:addTap];
    UITapGestureRecognizer *reduceTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(reduceDishCountAction:)];
    [cell.reduceButton addGestureRecognizer:reduceTap];

    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSInteger row = [indexPath row];
    NSLog(@"%d",row);
    
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 78.0f;
}

-(void)addDishCountAction:(id)sender
{
    
    UITapGestureRecognizer *tap = (UITapGestureRecognizer *)sender;
    NSInteger row = tap.view.tag;
    MakeOrderCell *cell = (MakeOrderCell *)[self.tableview cellForRowAtIndexPath:[NSIndexPath indexPathForRow:row inSection:0]];
    NSInteger dishCount = [cell.dishCount.text intValue];
   
    cell.dishCount.text = [NSString stringWithFormat:@"%d",dishCount+1];
}

-(void)reduceDishCountAction:(id)sender
{
    UITapGestureRecognizer *tap = (UITapGestureRecognizer *)sender;
    NSInteger row = tap.view.tag;
    MakeOrderCell *cell = (MakeOrderCell *)[self.tableview cellForRowAtIndexPath:[NSIndexPath indexPathForRow:row inSection:0]];
    NSInteger dishCount = [cell.dishCount.text intValue];
    if(dishCount!=0)
        cell.dishCount.text = [NSString stringWithFormat:@"%d",dishCount-1];
    NSLog(@"%d",row);
}

- (IBAction)categoryButtonAction:(id)sender {
}

- (IBAction)searchButtonAction:(id)sender {
}

-(void)gotoOrderDetailViewController
{
    UIStoryboard *orderStoryBoard = [UIStoryboard storyboardWithName:@"makeOrder" bundle:nil];
    OrderDetailViewController *orderDetailViewController = [[OrderDetailViewController alloc] init];
    orderDetailViewController = [orderStoryBoard instantiateViewControllerWithIdentifier:@"OrderDetailViewController"];
    [self.navigationController pushViewController:orderDetailViewController animated:YES];
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSLog(@"22");
    OrderDetailViewController *controller = segue.destinationViewController;
    controller.hidesBottomBarWhenPushed = YES;
}
@end

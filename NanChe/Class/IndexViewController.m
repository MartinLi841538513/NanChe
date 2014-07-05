//
//  IndexViewController.m
//  NanChe
//
//  Created by dongway on 14-2-10.
//  Copyright (c) 2014年 dongway. All rights reserved.
//

#import "IndexViewController.h"
#import "OrderTabController.h"
#import "FriendsTabViewController.h"
#import "TopicTabViewController.h"
#import "MapViewController.h"
#import "NotificationViewController.h"
#import "WebViewController.h"

@interface IndexViewController ()
{
    NSMutableArray *urls;
}

@end

@implementation IndexViewController

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

    [self setupViews];
    
    UITapGestureRecognizer *notificationTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(notice:)];
    UITapGestureRecognizer *recommend1Tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(recommend:)];
     UITapGestureRecognizer *recommend2Tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(recommend:)];
    [self.notification addGestureRecognizer:notificationTap];
    [self.recommend1 addGestureRecognizer:recommend1Tap];
    [self.recommend2 addGestureRecognizer:recommend2Tap];
    self.recommend1.userInteractionEnabled = YES;
    self.recommend2.userInteractionEnabled = YES;
    
    
    
    
}

-(void)viewWillAppear:(BOOL)animated
{
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(jumpToMakeOrderViewController) name:@"jumpToMakeOrderViewController" object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(jumpToFriendsViewController) name:@"jumpToFriendsViewController" object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(jumpToTopicsViewController) name:@"jumpToTopicsViewController" object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(jumpToMapViewController) name:@"jumpToMapViewController" object:nil];
}

#pragma mark -
- (void)setupViews
{
    EScrollerView *scroller;
    NSMutableArray *imgUrls = [[NSMutableArray alloc] init];
    urls = [[NSMutableArray alloc] init];
    NSInteger count = 2;
    NSMutableArray *titles = [[NSMutableArray alloc] init];
    for(int i=0;i<count;i++)
    {
        [urls addObject:@"http://dongway.com.cn"];
        [imgUrls addObject:@"http://old.dongway.com.cn/picture/indexdatapic/2013-12/02/220d0bf6-bbf7-4a7e-b27b-80e3fdcaae8b.png"];
        [titles addObject:[NSString stringWithFormat:@"%d",i+1]];
    }

    scroller=[[EScrollerView alloc] initWithFrameRect:CGRectMake(0, 0, 320, 150)
                                           ImageArray:imgUrls
                                           TitleArray:titles];
    scroller.delegate=self;
    [self.view addSubview:scroller];
}

#pragma mark -
-(void)EScrollerViewDidClicked:(NSUInteger)index
{
    NSString *urlString;
    if(index == urls.count+1)
    {
        urlString = [urls objectAtIndex:0];
    }
    else
    {
        urlString = [urls objectAtIndex:index - 1];
    }
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    WebViewController *webViewController = [[WebViewController alloc] init];
    webViewController = [mainStoryboard instantiateViewControllerWithIdentifier:@"WebViewController"];
    [self.navigationController pushViewController:webViewController animated:YES];

}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}


-(void)jumpToMakeOrderViewController
{
    UIStoryboard *makeOrderStoryboard = [UIStoryboard storyboardWithName:@"makeOrder" bundle:nil];
    OrderTabController *orderTabController = [[OrderTabController alloc] init];
    orderTabController = [makeOrderStoryboard instantiateViewControllerWithIdentifier:@"OrderTabController"];
    [self presentViewController:orderTabController animated:YES completion:nil];
}

-(void)jumpToFriendsViewController
{
    UIStoryboard *makeOrderStoryboard = [UIStoryboard storyboardWithName:@"friends" bundle:nil];
    FriendsTabViewController *friendsTabController = [[FriendsTabViewController alloc] init];
    friendsTabController = [makeOrderStoryboard instantiateViewControllerWithIdentifier:@"FriendsTabViewController"];
    [self presentViewController:friendsTabController animated:YES completion:nil];
}

-(void)jumpToTopicsViewController
{
    UIStoryboard *makeOrderStoryboard = [UIStoryboard storyboardWithName:@"topic" bundle:nil];
    TopicTabViewController *topicsTabController = [[TopicTabViewController alloc] init];
    topicsTabController = [makeOrderStoryboard instantiateViewControllerWithIdentifier:@"TopicTabViewController"];
    [self presentViewController:topicsTabController animated:YES completion:nil];
}


-(void)jumpToMapViewController
{
    UIStoryboard *makeOrderStoryboard = [UIStoryboard storyboardWithName:@"Map" bundle:nil];
    MapViewController *mapTabController = [[MapViewController alloc] init];
    mapTabController = [makeOrderStoryboard instantiateViewControllerWithIdentifier:@"MapNavViewController"];
    [self presentViewController:mapTabController animated:YES completion:nil];
}

- (IBAction)makeOrderAction:(id)sender {
    [[NSNotificationCenter defaultCenter] postNotificationName:@"jumpToMakeOrderViewController" object:nil];
}

- (IBAction)friendsAction:(id)sender {
     [[NSNotificationCenter defaultCenter] postNotificationName:@"jumpToFriendsViewController" object:nil];
}

- (IBAction)topicAction:(id)sender {
    [[NSNotificationCenter defaultCenter] postNotificationName:@"jumpToTopicsViewController" object:nil];
}

-(void)notice:(id)sender
{
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    NotificationViewController *notificationViewController = [[NotificationViewController alloc] init];
    notificationViewController = [mainStoryboard instantiateViewControllerWithIdentifier:@"NotificationViewController"];
    [self.navigationController pushViewController:notificationViewController animated:YES];
}

-(void)recommend:(id)sender
{
    [[NSNotificationCenter defaultCenter] postNotificationName:@"jumpToMakeOrderViewController" object:nil];
}

@end

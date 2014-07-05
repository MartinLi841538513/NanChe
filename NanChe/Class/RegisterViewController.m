//
//  RegisterViewController.m
//  NanChe
//
//  Created by dongway on 14-2-10.
//  Copyright (c) 2014年 dongway. All rights reserved.
//

#import "RegisterViewController.h"
#import "Common.h"

@interface RegisterViewController ()
{
    Common *common;
}

@end

@implementation RegisterViewController

@synthesize navigationItem;

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
    common = [[Common alloc] init];
    [common viewControllerReturnButton:self];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)viewControllerReturnButton:(UIViewController *)viewController
{
    UIButton *returnButton = [[UIButton alloc] init];
    returnButton.frame=CGRectMake(0,0,40,28);
    [returnButton setBackgroundImage:[UIImage imageNamed:@"return.png"] forState:UIControlStateNormal];
    [returnButton addTarget:self action:@selector(dismissModalViewController:) forControlEvents:UIControlEventTouchDown];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:returnButton];
    
}

-(void)dismissModalViewController:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end

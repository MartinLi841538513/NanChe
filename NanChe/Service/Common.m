//
//  Common.m
//  NanChe
//
//  Created by dongway on 14-2-10.
//  Copyright (c) 2014年 dongway. All rights reserved.
//

#import "Common.h"
#import "SubButton.h"

@implementation Common


//返回button,两种返回方法：1.返回button用图片 2.右滑可以返回
-(void)navigationReturnButton:(UIViewController *)viewController
{
    SubButton *returnButton = [[SubButton alloc] init];
    returnButton.frame=CGRectMake(0,0,40,28);
    [returnButton setBackgroundImage:[UIImage imageNamed:@"return.png"] forState:UIControlStateNormal];
    [returnButton addTarget:self action:@selector(popViewController:) withObject:viewController forControlEvents:UIControlEventTouchDown];
    viewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:returnButton];
    
}

-(void)popViewController:(id)sender
{
    UIViewController *viewController = [(id)sender anObject];
    [viewController.navigationController popViewControllerAnimated:YES];
}

-(void)viewControllerReturnButton:(UIViewController *)viewController
{
    SubButton *returnButton = [[SubButton alloc] init];
    returnButton.frame=CGRectMake(0,0,40,28);
    [returnButton setBackgroundImage:[UIImage imageNamed:@"return.png"] forState:UIControlStateNormal];
    [returnButton addTarget:self action:@selector(dismissModalViewController:) withObject:viewController forControlEvents:UIControlEventTouchDown];
    viewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:returnButton];

}

-(void)dismissModalViewController:(id)sender
{
    UIViewController *viewController = [(id)sender anObject];
    [viewController dismissViewControllerAnimated:YES completion:nil];
}


@end

//
//  BaseViewController.m
//  TabNavDemo
//
//  Created by Senbakeji on 16/6/29.
//  Copyright © 2016年 Xiang_ziyan. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.view.backgroundColor = xBackgroundColor;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setBackButtonStyle];
    // Do any additional setup after loading the view.
}

- (void)setBackButtonStyle
{
    UIBarButtonItem *backItem = [[UIBarButtonItem alloc] init];
    backItem.title = @"";
    self.navigationItem.backBarButtonItem = backItem;
}

- (void)viewWillAppear:(BOOL)animated
{
    [self setNeedsStatusBarAppearanceUpdate];
}

- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}

- (void)setBageValueForTabbarItemWithIndex:(NSInteger)index andWithValue:(NSInteger)badgeValue
{
    if (badgeValue <= 0) {
        [[self.tabBarController.viewControllers objectAtIndex:index].tabBarItem setBadgeValue:nil];
        return;
    }
    [[self.tabBarController.viewControllers objectAtIndex:index].tabBarItem setBadgeValue:[NSString stringWithFormat:@"%ld",badgeValue]];
}

- (void)setBageValueForTabbarItemWithIndex:(NSInteger)index andWithAddValue:(NSInteger)badgeValue
{
    [[self.tabBarController.viewControllers objectAtIndex:index].tabBarItem setBadgeValue:[NSString stringWithFormat:@"%ld",badgeValue+[[self.tabBarController.viewControllers objectAtIndex:index].tabBarItem.badgeValue integerValue]]];
}


+ (UIViewController *)presentingVC{
    UIWindow * window = [[UIApplication sharedApplication] keyWindow];
    if (window.windowLevel != UIWindowLevelNormal)
    {
        NSArray *windows = [[UIApplication sharedApplication] windows];
        for(UIWindow * tmpWin in windows)
        {
            if (tmpWin.windowLevel == UIWindowLevelNormal)
            {
                window = tmpWin;
                break;
            }
        }
    }
    UIViewController *result = window.rootViewController;
    while (result.presentedViewController) {
        result = result.presentedViewController;
    }
    return result;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

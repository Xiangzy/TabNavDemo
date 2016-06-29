//
//  MainTabViewController.m
//  TabNavDemo
//
//  Created by Senbakeji on 16/6/29.
//  Copyright © 2016年 Xiang_ziyan. All rights reserved.
//

#import "MainTabViewController.h"
#import "IndexViewController.h"
#import "OrderViewController.h"
#import "MineViewController.h"

@interface MainTabViewController ()

@end

@implementation MainTabViewController
{
    UITabBarController *_tabC;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self createMainTab];
    // Do any additional setup after loading the view.
}

- (void)createMainTab
{
    _tabC = [[UITabBarController alloc] init];
    [_tabC.view setFrame:self.view.bounds];
    [self.view addSubview:_tabC.view];
    
    IndexViewController *rvc1 = [[IndexViewController alloc] init];
    UINavigationController *nac1 = [[UINavigationController alloc] initWithRootViewController:rvc1];
    nac1.tabBarItem.image = [[UIImage imageNamed:@"首页"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    nac1.tabBarItem.selectedImage = [[UIImage imageNamed:@"首页交互"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    OrderViewController *rvc2 = [[OrderViewController alloc] init];
    UINavigationController *nac2 = [[UINavigationController alloc] initWithRootViewController:rvc2];
    nac2.tabBarItem.image = [[UIImage imageNamed:@"行程"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    nac2.tabBarItem.selectedImage = [[UIImage imageNamed:@"行程交互"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    MineViewController *ivc = [[MineViewController alloc] init];
    UINavigationController *nac3 = [[UINavigationController alloc] initWithRootViewController:ivc];
    nac3.tabBarItem.image = [[UIImage imageNamed:@"我的"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    nac3.tabBarItem.selectedImage = [[UIImage imageNamed:@"我的交互"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    NSArray *viewControllers = [[NSArray alloc]initWithObjects:nac1,nac2,nac3, nil];
    _tabC.viewControllers = viewControllers;
    _tabC.delegate = self;
    NSArray *array = @[@"首页",@"行程",@"我的"];
    for(int i=0; i<_tabC.tabBar.items.count; i++) {
        UITabBarItem *item = [_tabC.tabBar.items objectAtIndex:i];
        
        item.title = [NSString stringWithFormat:@"%@",[array objectAtIndex:i]];
        NSDictionary *textAttributes1 = @{
                                          NSFontAttributeName: [UIFont boldSystemFontOfSize:12],
                                          NSForegroundColorAttributeName: [UIColor colorWithRed:0.68 green:0.68 blue:0.68 alpha:1],
                                          };
        [item setTitleTextAttributes:textAttributes1 forState:UIControlStateNormal];
        NSDictionary *textAttributes2 = @{
                                          NSFontAttributeName: [UIFont boldSystemFontOfSize:12],
                                          NSForegroundColorAttributeName: [UIColor colorWithRed:1 green:0.47 blue:0 alpha:1],
                                          };
        [item setTitleTextAttributes:textAttributes2 forState:UIControlStateSelected];
    }
    _tabC.selectedIndex = 0;
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

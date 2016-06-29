//
//  IndexViewController.m
//  TabNavDemo
//
//  Created by Senbakeji on 16/6/29.
//  Copyright © 2016年 Xiang_ziyan. All rights reserved.
//

#import "IndexViewController.h"
#import "OtherViewController.h"

@interface IndexViewController ()

@end

@implementation IndexViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setNavImageView];
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(30, 100, xScreen_Width-60, 40);
    btn.backgroundColor = xMainColor;
    btn.titleLabel.font = [UIFont systemFontOfSize:16];
    [btn setTitle:@"PUSH" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    //[btn.layer setMasksToBounds:YES];
    [btn.layer setCornerRadius:5];
    [self.view addSubview:btn];
    // Do any additional setup after loading the view.
}

- (void)btnClick
{
    OtherViewController *svc = [[OtherViewController alloc] init];
    [svc setHidesBottomBarWhenPushed:YES];
    [self.navigationController pushViewController:svc animated:YES];
}

#pragma mark 设置导航图像
- (void)setNavImageView
{
    UIImageView *iconImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"senbabalogo"]];
    self.navigationItem.titleView = iconImageView;
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

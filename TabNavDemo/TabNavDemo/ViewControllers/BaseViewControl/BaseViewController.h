//
//  BaseViewController.h
//  TabNavDemo
//
//  Created by Senbakeji on 16/6/29.
//  Copyright © 2016年 Xiang_ziyan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseViewController : UIViewController


- (void)setBageValueForTabbarItemWithIndex:(NSInteger)index andWithValue:(NSInteger)badgeValue;

- (void)setBageValueForTabbarItemWithIndex:(NSInteger)index andWithAddValue:(NSInteger)badgeValue;

+ (UIViewController *)presentingVC;


@end

//
//  MCMainTabBarVC.m
//  ChaoHuaXiShi
//
//  Created by mac on 16/11/2.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "MCMainTabBarVC.h"
#import "MCMainTabBar.h"


@interface MCMainTabBarVC ()

@end

@implementation MCMainTabBarVC

- (void)viewDidLoad {
    [super viewDidLoad];
//    [self setUpTabBar];

}
#pragma mark <添加自定义的tabBar>
- (void)setUpTabBar {
    MCMainTabBar *tabBar = [[MCMainTabBar alloc] init];
    [self setValue:tabBar forKey:@"tabBar"];
}

@end

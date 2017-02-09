//
//  MCMainTabBar.m
//  ChaoHuaXiShi
//
//  Created by mac on 16/11/2.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "MCMainTabBar.h"


@interface MCMainTabBar ()
//加号按钮
@property (nonatomic, weak) UIButton *plusButton;

@end

@implementation MCMainTabBar

- (void)layoutSubviews {
    [super layoutSubviews];
    
    //获取tabBarItem的宽和高
    CGFloat w = self.bounds.size.width;
    CGFloat h = self.bounds.size.height;
    
    //设置按钮在tabBarItem内部的Frame
    CGFloat btnX = 0;
    CGFloat btnY = 0;
    CGFloat btnW = w / (self.items.count + 1);
    CGFloat btnH = self.bounds.size.height;
    NSUInteger i = 0;
    //设置tabBarButton的frame
    for (UIView *tabBarButton in self.subviews) {
        FULog(@"%@", NSStringFromClass([tabBarButton class]));
        if ([tabBarButton isKindOfClass:NSClassFromString(@"UITabBarButton")]) {
            //将加号按钮的位置腾出来
            if (i == 1) {
                i = 2;
            }
            btnX = i * btnW;
            tabBarButton.frame = CGRectMake(btnX, btnY, btnW, btnH);
            i++;
        }
    }
    
}


@end

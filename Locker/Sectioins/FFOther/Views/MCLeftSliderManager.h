//
//  MCLeftSliderManager.h
//  ChaoHuaXiShi
//
//  Created by mac on 16/11/1.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MCLeftSlideViewController.h"


@interface MCLeftSliderManager : NSObject

+ (instancetype)sharedInstance;

@property (nonatomic, strong) MCLeftSlideViewController *LeftSlideVC;

@property (nonatomic, strong) UINavigationController *mainNavigationController;

@end

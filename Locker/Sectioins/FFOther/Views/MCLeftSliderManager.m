//
//  MCLeftSliderManager.m
//  ChaoHuaXiShi
//
//  Created by mac on 16/11/1.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "MCLeftSliderManager.h"

@implementation MCLeftSliderManager

static id _instance;

+ (instancetype)sharedInstance {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[self alloc] init];
    });
    return _instance;
}

@end

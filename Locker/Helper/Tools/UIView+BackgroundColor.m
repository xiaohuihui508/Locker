//
//  UIView+BackgroundColor.m
//  ChaoHuaXiShi
//
//  Created by mac on 16/11/2.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "UIView+BackgroundColor.h"
#import "objc/runtime.h"

@interface UIView ()

@end

@implementation UIView (BackgroundColor)

- (UIColor *)nightBackgroundColor {
    UIColor *nightColor = objc_getAssociatedObject(self, @selector(nightBackgroundColor));
    if (nightColor) {
        return nightColor;
    } else if (self.normalBackgroundColor) {
        return self.normalBackgroundColor;
    } else {
        return self.backgroundColor;
    }
}

- (void)setNightBackgroundColor:(UIColor *)nightBackgroundColor {
    if (!self.normalBackgroundColor) {
        self.normalBackgroundColor = self.backgroundColor;
    }
    [self setBackgroundColor:nightBackgroundColor];
    [self setBackgroundColor:self.normalBackgroundColor];
    objc_setAssociatedObject(self, @selector(nightBackgroundColor), nightBackgroundColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (UIColor *)normalBackgroundColor {
    return objc_getAssociatedObject(self, @selector(normalBackgroundColor));
}

- (void)setNormalBackgroundColor:(UIColor *)normalBackgroundColor {
    [self setBackgroundColor:normalBackgroundColor];
    [self setBackgroundColor:self.nightBackgroundColor];
    objc_setAssociatedObject(self, @selector(normalBackgroundColor), normalBackgroundColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

@end


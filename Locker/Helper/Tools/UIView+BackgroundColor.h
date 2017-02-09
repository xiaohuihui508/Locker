//
//  UIView+BackgroundColor.h
//  ChaoHuaXiShi
//
//  Created by mac on 16/11/2.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (BackgroundColor)

/**
 * Set this property when switch to night version uiview BackgroundColor turns to this color.
 */
@property (nonatomic, strong) UIColor *nightBackgroundColor;

/**
 *  UIView BackgroundColor in normal version.
 */
@property (nonatomic, strong) UIColor *normalBackgroundColor;

@end


//
//  UIView_extra.h
//  ChaoHuaXiShi
//
//  Created by mac on 16/11/1.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>


#define vAlertTag          10086

@interface UIView (UIView)

@property (nonatomic, assign) CGFloat x;
@property (nonatomic, assign) CGFloat y;
@property (nonatomic, assign) CGFloat width;
@property (nonatomic, assign) CGFloat height;
@property (nonatomic, assign) CGPoint origin;
@property (nonatomic, assign) CGSize  size;
@property (nonatomic, assign) CGFloat bottom;
@property (nonatomic, assign) CGFloat right;
@property (nonatomic, assign) CGFloat centerX;
@property (nonatomic, assign) CGFloat centerY;
@property (nonatomic, strong, readonly) UIView *lastSubviewOnX;
@property (nonatomic, strong, readonly) UIView *lastSubViewOnY;



/**
 *  @brief 移除此view上的所有子视图
 */
- (void)removeAllSubviews;

/**
 * 
 @brief 弹窗
 @param title  弹窗标题
        message 弹窗信息
 */
+ (void) showAlertView:(NSString *)title andMessage:(NSString *)message;

/**
 * @param title 弹窗标题
 * @param message 弹窗信息
 * @param delegate 弹窗代理
 */
+ (void) showAlertView:(NSString *)title
            andMessage:(NSString *)message
          withDelegate:(UIViewController<UIAlertViewDelegate> *)delegate;


@end

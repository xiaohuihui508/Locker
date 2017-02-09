//
//  MCMainNavgationVC.m
//  ChaoHuaXiShi
//
//  Created by mac on 16/11/2.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "MCMainNavgationVC.h"
#import "MCLeftSliderManager.h"


@interface MCMainNavgationVC ()

@end

@implementation MCMainNavgationVC

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor whiteColor]}];

}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    [[MCLeftSliderManager sharedInstance].LeftSlideVC setPanEnabled:NO];
    [super pushViewController:viewController animated:animated];
}

- (UIViewController *)popViewControllerAnimated:(BOOL)animated {
    FULog(@"%@-------%@", self.viewControllers.firstObject, self.viewControllers.lastObject);
    if (self.viewControllers.count == 2) {
        [[MCLeftSliderManager sharedInstance].LeftSlideVC setPanEnabled:YES];
    }
    return [super popViewControllerAnimated:animated];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end

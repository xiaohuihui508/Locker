//
//  AppDelegate.m
//  Locker
//
//  Created by mac on 17/2/9.
//  Copyright © 2017年 mac. All rights reserved.
//

#import "AppDelegate.h"

#import "MCLeftSortsViewController.h"
#import "MCFirstPageVIewController.h"
#import "MCSecondPageViewController.h"
#import "MCMainNavgationVC.h"
#import "MCLeftSlideViewController.h"
#import "MCLeftSliderManager.h"
#import "MCMainTabBar.h"
#import "MCMainTabBarVC.h"


@interface AppDelegate ()

@end

@implementation AppDelegate

// 设置跟控制器
-(void)initRootViewController{
    
    MCFirstPageVIewController *firstVC = [[MCFirstPageVIewController alloc] init];
    
    UINavigationController *firstNav = [[MCMainNavgationVC alloc] initWithRootViewController:firstVC];
    firstNav.tabBarItem.image = [UIImage imageNamed:@"tab_buddy_nor"];
    firstVC.title = @"首页";
    firstVC.navigationController.navigationBar.barTintColor = [UIColor greenColor];
    
    MCSecondPageViewController *secondVC = [[MCSecondPageViewController alloc] init];
    UINavigationController *secondNav = [[MCMainNavgationVC alloc] initWithRootViewController:secondVC];
    secondNav.tabBarItem.image = [UIImage imageNamed:@"tab_me_nor"];
    secondVC.title = @"设置";
    secondVC.navigationController.navigationBar.barTintColor = [UIColor greenColor];
    
    MCMainTabBarVC *tabVC = [[MCMainTabBarVC alloc] init];
    [tabVC setViewControllers:@[firstNav,secondNav]];
    tabVC.tabBar.tintColor = [UIColor orangeColor];
    
    MCLeftSortsViewController *leftVC = [[MCLeftSortsViewController alloc] init];
    MCLeftSlideViewController *rootVC = [[MCLeftSlideViewController alloc] initWithLeftView:leftVC andMainView:tabVC];
    self.window.rootViewController = rootVC;
    
    
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];   //设置通用背景颜色
    [self.window makeKeyAndVisible];
    
    [self initRootViewController];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end

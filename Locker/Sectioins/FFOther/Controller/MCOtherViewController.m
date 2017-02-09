//
//  MCOtherViewController.m
//  ChaoHuaXiShi
//
//  Created by mac on 16/11/2.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "MCOtherViewController.h"

@interface MCOtherViewController ()

@end

@implementation MCOtherViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor redColor];
    
    
    UILabel *navigationLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 50, 44)];
    navigationLabel.text = self.titleName;
    navigationLabel.textAlignment = NSTextAlignmentCenter;
    self.navigationItem.titleView = navigationLabel;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end

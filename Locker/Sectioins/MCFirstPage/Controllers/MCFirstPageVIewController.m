//
//  MCFirstPageVIewController.m
//  ChaoHuaXiShi
//
//  Created by mac on 16/11/2.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "MCFirstPageVIewController.h"

@interface MCFirstPageVIewController ()<UICollectionViewDataSource, UICollectionViewDelegate>

@property (nonatomic, strong) UICollectionView *collectionView;

@property (nonatomic, strong) UITableView *tableView;


@end

@implementation MCFirstPageVIewController

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
//    [self.tabBarController.tabBar setHidden:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];
    
    [self initUICollection];
    
    [self.tabBarController.tabBar setHidden:YES];
    
}
#pragma mark <布局UICollectionView>
- (void)initUICollection {
    UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
    //item的大小
    flowLayout.itemSize = CGSizeMake(KMainWidth / 2, KMainWidth / 1.4);
    //横向的距离
    flowLayout.minimumLineSpacing = 0;
    flowLayout.minimumInteritemSpacing = 0;
    //距离上，下，左，右
    flowLayout.sectionInset = UIEdgeInsetsMake(1, 0, 0, 0);
    
    self.collectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, 0, KMainWidth, KMainHeight) collectionViewLayout:flowLayout];
    _collectionView.backgroundColor = [UIColor whiteColor];
    _collectionView.delegate = self;
    _collectionView.dataSource = self;
    //自适应大小
    _collectionView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    
    //注册cell
    [_collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"cell"];
    [self.view addSubview:self.collectionView];
    
}

#pragma mark   -----------UICollectionViewDataSource-------------------
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 15;
}
/**
 * 返回item
 */
- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    cell.backgroundColor = MCRandomColor;
    
    [cell.layer setBorderWidth:0.5];
    [cell.layer setBorderColor:[UIColor blackColor].CGColor];
    
    return cell;
}

/**
 *  选中每个item
 */
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    FULog(@"%ld, %ld", indexPath.section, indexPath.item);
}

@end

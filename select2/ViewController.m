//
//  ViewController.m
//  select2
//
//  Created by N-X on 2017/3/2.
//  Copyright © 2017年 hixiaosan. All rights reserved.
//

#import "ViewController.h"
#import "MagicCircleLayout.h"
#import "MyCollectionCell.h"
#define kCellID    @"cellID"

@interface ViewController ()<UICollectionViewDataSource,UICollectionViewDelegate>
@property (nonatomic ,strong)UICollectionView *collectionView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor orangeColor];
    
    CGFloat cellW = [UIScreen mainScreen].bounds.size.width * 151/750;
    CGFloat collectionViewH = [UIScreen mainScreen].bounds.size.width * 820 /750;
    CGFloat collectionY = [UIScreen mainScreen].bounds.size.width * 100 /750;
    
    MagicCircleLayout * layout = [[MagicCircleLayout alloc]init];
    layout.hideAngleBegin = 60;
    layout.hideAngleEnd = 300;
    layout.hideNum = 2;
    layout.itemSize = CGSizeMake(cellW , cellW);
    
//    UICollectionViewFlowLayout * layout = [[UICollectionViewFlowLayout alloc]init];
//    layout.itemSize = CGSizeMake(70 , 70);

    _collectionView = [[UICollectionView alloc]initWithFrame:CGRectMake(0, collectionY + 64, [UIScreen mainScreen].bounds.size.width, collectionViewH) collectionViewLayout:layout];
    _collectionView.backgroundColor = [UIColor purpleColor];
    _collectionView.delegate = self;
    _collectionView.dataSource = self;
    //注册cell
    
//    [_collectionView registerClass:[MyCollectionCell class] forCellWithReuseIdentifier:kCellID];
    [_collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:kCellID];
    [self.view addSubview:_collectionView];
}

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return 30;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
//    MyCollectionCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:kCellID forIndexPath:indexPath];
     UICollectionViewCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:kCellID forIndexPath:indexPath];
     cell.backgroundColor = [UIColor redColor];
    cell.layer.cornerRadius = cell.frame.size.width * 0.5;

//    cell.title = [NSString stringWithFormat:@"%d", (int)indexPath.row];
    
    return cell;
}


- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"点击的是第%ld个item",(long)indexPath.row);
}


@end

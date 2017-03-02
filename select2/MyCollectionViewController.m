//
//  MyCollectionViewController.m
//  select2
//
//  Created by mac on 16/2/26.
//  Copyright © 2016年 hixiaosan. All rights reserved.
//

#import "MyCollectionViewController.h"
#import "MyCollectionViewCell.h"
#import "MagicCircleLayout.h"

@interface MyCollectionViewController ()<CicelLayoutDelegate>

@end

@implementation MyCollectionViewController

static NSString * const reuseIdentifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes
//    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
    CGFloat cellW = [UIScreen mainScreen].bounds.size.width * 151/750;
    [self.collectionView registerNib:[UINib nibWithNibName:@"MyCollectionCell" bundle:nil] forCellWithReuseIdentifier:@"Cell"];
    
    MagicCircleLayout *layout = [[MagicCircleLayout alloc] init];
   // layout.radius = 100;
    layout.delegate = self;
    
    layout.hideAngleBegin = 60;
    layout.hideAngleEnd = 300;
    layout.hideNum = 2;
    layout.itemSize = CGSizeMake(cellW , cellW);
    [self.collectionView setCollectionViewLayout:layout];
    // Do any additional setup after loading the view.
    
    
    self.collectionView.backgroundColor = [UIColor whiteColor];
}

- (void)changeNumOfCollectioncellWithOffset:(CGFloat)offsetY
{
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return 30;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    MyCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    // cell.backgroundColor = [UIColor redColor];
    cell.title = [NSString stringWithFormat:@"%d", (int)indexPath.row];
 
//    cell.layer.anchorPoint = CGPointMake(0.5, 1.8);
    return cell;
}


 - (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"点击的是第%ld个item",(long)indexPath.row);
}


@end

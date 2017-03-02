//
//  MyCollectionViewCell.m
//  select2
//
//  Created by mac on 16/2/26.
//  Copyright © 2016年 hixiaosan. All rights reserved.
//

#import "MyCollectionViewCell.h"


@interface MyCollectionViewCell()
@property (nonatomic, weak) UIImageView *imageView;

@end

@implementation MyCollectionViewCell

- (id)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"上口袋1未选中"]];
        //    label.backgroundColor = [UIColor redColor];
        [self addSubview:imageView];
        self.imageView = imageView;
        //self.imageView.layer.cornerRadius = 45;
        self.imageView.backgroundColor = [UIColor redColor];
        self.imageView.clipsToBounds = YES;
    }
    return self;
}

- (void)layoutSubviews
{
    self.imageView.frame = self.bounds;
//    NSLog(@"%@", self.label);
}




@end

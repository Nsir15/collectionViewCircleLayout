//
//  MyCollectionCell.m
//  select2
//
//  Created by mac on 16/2/26.
//  Copyright © 2016年 hixiaosan. All rights reserved.
//

#import "MyCollectionCell.h"

@interface MyCollectionCell()
@property (nonatomic, weak) UILabel *label;
@end

@implementation MyCollectionCell


- (void)awakeFromNib {
    // Initialization code
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 10)];
    
    [self addSubview:label];
}

- (void)setTitle:(NSString *)title
{
    self.label.text = self.title;
}

@end

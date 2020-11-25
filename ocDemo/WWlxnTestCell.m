//
//  WWlxnTestCell.m
//  ocDemo
//
//  Created by 李晓楠 on 2020/11/20.
//  Copyright © 2020 李晓楠. All rights reserved.
//

#import "WWlxnTestCell.h"

@implementation WWlxnTestCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
       if (self) {
           [self createBaseUI];
       }
       return self;
}

- (void) createBaseUI{
    UILabel * lxn1 = [UILabel new];
    lxn1.text = @"lxn测试1";
    lxn1.frame = CGRectMake(0,0,80,30);
    [self.contentView addSubview:lxn1];
}
@end

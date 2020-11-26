//
//  HWTableViewCell.m
//  ocDemo
//
//  Created by 李晓楠 on 2020/11/24.
//  Copyright © 2020 李晓楠. All rights reserved.
//

#import "HWTableViewCell.h"
#import "HWCellModel.h"

@interface HWTableViewCell()

  @property (nonatomic, weak) UIImageView *imgView;
  @property (nonatomic, weak) UILabel *subLabel;

@end
@implementation HWTableViewCell
/**
  实现的静态方法的
 */
+ (instancetype)cellWithTableView:(UITableView *)tableview{
    //cell 复用，唯一标识的
    static NSString *identifer = @"Hwcell";
    //先从缓存中获取
    HWTableViewCell *cell = [tableview dequeueReusableCellWithIdentifier:identifer];
    //缓存中没有再创建 并添加标识 ，cell移除屏幕时放入缓存池复用
    if(cell == nil){
        cell =[[HWTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:(identifer)];
    }
    return cell;
}


//重写init方法构建cell内容的
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        //图片的
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(5, 5, 80, 60)];
        imageView.backgroundColor = [UIColor colorWithRed:([self getRandomNumber]) green:[self getRandomNumber] blue:[self getRandomNumber] alpha:(0.5)];
        [self.contentView addSubview:imageView];
        self.imgView =imageView;
    
        
        //标题展示的
        UILabel *tileLable =[[UILabel alloc] initWithFrame:CGRectMake(
                                                                  CGRectGetMaxX(imageView.frame)+10,40,200,13)];
        tileLable.font = [UIFont systemFontOfSize:13.0f];
        [self.contentView addSubview:tileLable];
        self.lable = tileLable;
        self.backgroundColor = [UIColor whiteColor];
    }
    return self;
}

-(int)getRandomNumber{
   return (int)(0 +  (arc4random() % 125));
}


-(void)setModel:(HWCellModel *)model{
    _model = model;
    self.imgView.image = [UIImage imageNamed:model.image];
    self.lable.text = model.title;
    self.subLabel.text =model.subTitle;
}




- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end

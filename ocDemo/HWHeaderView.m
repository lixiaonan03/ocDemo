//
//  HWHeaderView.m
//  ocDemo
//
//  Created by 李晓楠 on 2020/11/24.
//  Copyright © 2020 李晓楠. All rights reserved.
//

#import "HWHeaderView.h"

@implementation HWHeaderView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
//重写init方法
- (id)initWithFrame:(CGRect)frame{
    if(self=[super initWithFrame:frame]){
        //创建一个标签作为头部视图
        UILabel *lable = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, 40 )];
        lable.text = @"这是头部视图的";
        lable.textAlignment = NSTextAlignmentCenter;
        lable.textColor = [UIColor whiteColor];
        lable.backgroundColor = [UIColor grayColor];
        [self addSubview:lable];
    }
    return nil;
}

@end

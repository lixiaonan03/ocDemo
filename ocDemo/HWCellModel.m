//
//  HWCellModel.m
//  ocDemo
//
//  Created by 李晓楠 on 2020/11/24.
//  Copyright © 2020 李晓楠. All rights reserved.
//

#import "HWCellModel.h"

@implementation HWCellModel

- (id)initWithDictionary:(NSDictionary *)dict
{
self = [super init];
if (self) {
[self setValuesForKeysWithDictionary:dict];
}
return self;
}
+ (id)HWInfoWithDictionary:(NSDictionary *)dict{
return [[self alloc] initWithDictionary:dict];
}

@end

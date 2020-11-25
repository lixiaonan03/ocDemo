//
//  HWCellModel.h
//  ocDemo
//
//  Created by 李晓楠 on 2020/11/24.
//  Copyright © 2020 李晓楠. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface HWCellModel : NSObject
/**
 copy：创建一个对象的副本。在创建的那一刻新对象与原始对象内容相同。
新的对象引用计数为1，与原始对象引用计数无关，且原始对象引用计数不会改变。
使用copy创建的新对象也是强引用，使用完成后需要负责释放该对象。
copy特性可以减少对象对上下文的依赖。新对象、原始对象中任一对象的值改变不会影响另一对象的值。
要想设置该对象的特性为copy，该对象必须遵守NSCopying协议，Foundation类默认实现了NSCopying协议，所以只需要为自定义的类实现该协议即可。

 浅复制复制 对象指针 深复制复制对象的值
 */
@property (nonatomic,copy) NSString *image;

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *subTitle;

- (id)initWithDictionary:(NSDictionary *)dict;
+ (id)HWInfoWithDictionary:(NSDictionary *)dict;

@end

NS_ASSUME_NONNULL_END

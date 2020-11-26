//
//  HWTableView.h
//  ocDemo
//
//  Created by 李晓楠 on 2020/11/24.
//  Copyright © 2020 李晓楠. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

/**
   在ios中我们经常会在.h和.m中引入一些类啊等等一般用的是#import来进行声明，你们可能也见到在.h文件进用@class来声明的，那么#import和@class进行声明 到底有什么的区别呢？下面我来说说

   1.import会包含这个类的所有信息，包括实体变量和方法，而@class只告诉编 译器，声明的类的名称，至于这些类是如何定义的，暂时不用考虑，后面会再告诉你，所以在头文件中如果用@class声明某个类后，在.m的实现中如果用到声明类的具体方法或变量时还得再#import类

 2.在.h头文件中进行声明时用#import的话，如果100个头文件都#import同一个头件，或者这些文件是依次引用的，如A->B,B->C,C->D,当最开始的那个头文件有变化后进行编译时，后面所有引用它的类都需要重新编译，如果引用最开始的头文件的类很多的话，那么这将耗费大量的时间，而用@class则不会，可能有人会想即然.h只是用@class只是简单的一个声明告编译器有这个类不让其报错，那么.m中要用到引入的类的方法和属性时，不还是要#import头文件一次，是的这个是对的，但编译器编译的时候只编译头文件的，所以你的.m中用#import与编译时间没太大关系

 3.接下来说说什么时候该用@class，什么时候该用#import进行声明，

   (1)一般如果有继承关系的用#import，如Ｂ是Ａ的子类那么在Ｂ中声明Ａ时用#import

   (2) 另外就是如果有循环依赖关系，如：A->B,B->A这样相互依赖时，如果在两个文件的头文件中用#import分别声明对方，那么就会出现头文件循环利用的错误，这时在头文件中用@class声明就不会出错

  (3)还有就是自定义代理的时候，如果在头文件中想声明代理的话如@interface
 */
@class HWCellModel;

@interface HWTableViewCell : UITableViewCell
@property (nonatomic,weak) UILabel *lable;
@property (nonatomic,strong) HWCellModel *model;

/**
   instancetype的作用，就是使那些非关联返回类型的方法返回所在类的类型！
 （1）id在编译的时候不能判断对象的真实类型   instancetype在编译的时候可以判断对象的真实类型
  (2) 如果init方法的返回值是instancetype,那么将返回值赋值给一个其它的对象会报一个警告
 如果是在以前, init的返回值是id,那么将init返回的对象地址赋值给其它对象是不会报错的
  （3）id可以用来定义变量, 可以作为返回值, 可以作为形参 instancetype只能用于作为返回值
 */
+ (instancetype)cellWithTableView:(UITableView *)tableview;
@end

NS_ASSUME_NONNULL_END


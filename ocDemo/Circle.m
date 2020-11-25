//
//  Circle.m
//  ocDemo
//
//  Created by 李晓楠 on 2020/11/23.
//  Copyright © 2020 李晓楠. All rights reserved.
//

#import "Circle.h"

@implementation Circle
 
-(void)testStr{
      NSString * a =@"程序启动会掉用这个方法的====";
    long b = [a length];
    NSString * thing1 = @"hello 5";
    NSString * thing2 = [NSString stringWithFormat:@"hello %d",5];
    if([thing1 isEqualToString:thing2]){
        b++;
    }
    if([thing1 compare:(thing2) options:(NSCaseInsensitiveSearch|NSNumericSearch)]){
        b++;
    }
    //str已某个字符开头
    if([thing1 hasPrefix:@"hell"]){
        
    }
    
    //类似于StringBuffer
    NSMutableString *str = [NSMutableString stringWithCapacity:20];
    [str appendString:@"lxn1"];
    [str appendFormat:@"hunme %d",39];
    
    NSMutableString *friends = [NSMutableString stringWithCapacity:2];
    [friends appendString:@"james lxn  beth"];
    
    NSRange lxnRanag= [friends rangeOfString:@"lxn"];
    lxnRanag.length++;
    [friends deleteCharactersInRange:lxnRanag];
    
}
/**
     练习一些NsArray
 */
-(void)testNaArray{
    NSArray *array = [NSArray arrayWithObjects:@"one",1,@"two",nil];
    NSUInteger aa = [array count];
    NSString *one =array[0];
    NSString *two =[array objectAtIndex:1];
    
    NSMutableArray *mutableCopy = [NSMutableArray arrayWithCapacity:12];
}

-(void)testNsDi{
    NSDictionary *dict1 = [NSDictionary dictionary];
    NSDictionary *ditc2=  [NSDictionary dictionaryWithObject:@"张三" forKey:@"key1"];
    NSDictionary *dict3 = [NSDictionary dictionaryWithObjectsAndKeys:@"value1",@"key1",@"value2","@key2", nil];
}
/**
    练习文件的
 */
-(void)testFile{
    NSFileManager *manager;
    manager = [NSFileManager defaultManager];
    
    NSString *home;
    home = [@"~" stringByExpandingTildeInPath];
    
    NSDirectoryEnumerator *direnum;
    direnum = [manager enumeratorAtPath:home];
    
    NSMutableArray *files;
    files = [NSMutableArray arrayWithCapacity:42];
    
    NSString *filename;
    while (filename = [direnum nextObject]) {
        if([[filename pathExtension] isEqualToString:@"jpg"]){
            [files addObject:filename];
        }
    }
    NSEnumerator *filenum;
    filenum =[files objectEnumerator];
    
    while (filename = [filenum nextObject]) {
        NSLog(@"%@",filename);
    }
}
@end

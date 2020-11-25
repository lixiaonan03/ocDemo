//
//  main.m
//  ocDemo
//
//  Created by 李晓楠 on 2020/11/19.
//  Copyright © 2020 李晓楠. All rights reserved.
//
#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[]) {
    NSString * appDelegateClassName;
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
        NSLog(@"Main方法执行的入口的");
    }
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);

}

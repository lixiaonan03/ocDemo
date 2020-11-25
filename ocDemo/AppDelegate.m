//
//  AppDelegate.m
//  ocDemo
//
//  Created by 李晓楠 on 2020/11/19.
//  Copyright © 2020 李晓楠. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

/**
   1.程序启动成功之后会自动调用的方法
    这个方法是iOS程序真正的入口，iOS编程实质就是在实现这个方法
 */
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // 当应用程序载入后执行该方法。
    NSLog(@"didFinishLaunchingWithOptions===当应用程序载入后执行方法执行");
//    self.window = [[UIWindow alloc] initWithFrame:UIScreen.mainScreen.bounds];
//    //创建根视图控制器
//    ViewController *rootVC = [[ViewController alloc] init];
//    //创建UINavigationController，将根视图控制器作为它的根视图
//    UINavigationController *navVC = [[UINavigationController alloc] ini];
    return YES;
}

/**
   当程序将要退出时，将调用该方法。通常是用来保存数据和进行一些退出前的清理工作。
 */
- (void)applicationWillTerminate:(UIApplication *)application {
    NSLog(@"applicationWillTerminate====将要退出方法执行");
}
/**
   当程序进入活动状态的时候，执行该方法。
 */
- (void)applicationDidBecomeActive:(UIApplication *)application {
     NSLog(@"applicationWillTerminate====进入活动状态方法执行");
}
/**
   当程序将要从后台重新回到前台的时候，调用此方法。
 */
- (void)applicationWillEnterForeground:(UIApplication *)application {
     NSLog(@"applicationWillEnterForeground====后台重新回到前台方法执行");
}
/**
 当程序被推送到后台的时候，调用此方法。如果要设置当程序进入后台仍然继续某些动作时，在这个方法里面添加代码即可。
 */
- (void)applicationDidEnterBackground:(UIApplication *)application {
    NSLog(@"applicationDidEnterBackground====当程序被推送到后台方法执行");
}



#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}



@end

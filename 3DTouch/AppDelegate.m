//
//  AppDelegate.m
//  3DTouch
//
//  Created by 蒋林 on 15/12/8.
//  Copyright © 2015年 蒋林. All rights reserved.
//

#import "AppDelegate.h"
#import "SecondViewController.h"
#import "ViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    
    //创建点击icon 的3Dtouch
    UIApplicationShortcutIcon *icon = [UIApplicationShortcutIcon iconWithType:UIApplicationShortcutIconTypeLove];
    //创建触发时候后弹出的按钮
    UIApplicationShortcutItem *shortItem = [[UIApplicationShortcutItem alloc] initWithType:@"按钮1" localizedTitle:@"点我" localizedSubtitle:@"点我试试" icon:icon userInfo:nil];
    UIApplicationShortcutItem *shortItem2 = [[UIApplicationShortcutItem alloc] initWithType:@"按钮2" localizedTitle:@"点我" localizedSubtitle:@"点我试试" icon:[UIApplicationShortcutIcon iconWithType:UIApplicationShortcutIconTypeFavorite] userInfo:nil];
    NSArray *shortItems = @[shortItem,shortItem2];
    [[UIApplication sharedApplication] setShortcutItems:shortItems];
    
    return YES;
}



//点击 3Dtouch按钮调用的协议代理
- (void)application:(UIApplication *)application performActionForShortcutItem:(UIApplicationShortcutItem *)shortcutItem completionHandler:(void (^)(BOOL))completionHandler {
    NSLog(@"shortcutItem%@", shortcutItem);
    
   SecondViewController *second = [[SecondViewController alloc] initWithTitle:@"3D Touch" backgroundColor:[UIColor whiteColor]];
    if ([shortcutItem.type isEqualToString:@"按钮1"]) {
        NSLog(@"%@",application.keyWindow.rootViewController);
        UINavigationController *viewcontroller = (UINavigationController *)application.keyWindow.rootViewController;
        [viewcontroller pushViewController:second animated:YES];
    }
    if ([shortcutItem.type isEqualToString:@"按钮2"]) {
        
    }
    
    
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end

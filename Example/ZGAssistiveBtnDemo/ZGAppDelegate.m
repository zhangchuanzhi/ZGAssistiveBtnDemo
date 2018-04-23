//
//  ZGAppDelegate.m
//  ZGAssistiveBtnDemo
//
//  Created by zhangchuanzhi on 04/23/2018.
//  Copyright (c) 2018 zhangchuanzhi. All rights reserved.
//

#import "ZGAppDelegate.h"
#import "ZGAssistiveBtn.h"
@implementation ZGAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    //延迟加载VersionBtn - 避免wimdow还没出现就往上加控件造成的crash
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self setVersionBtn];
    });
    return YES;
}
-(void)setVersionBtn
{
    CGFloat touchW = 120;
    CGFloat touchX = 375 - touchW;
    CGFloat touchY = 43;
    CGFloat touchH = 49;

    NSString *versionStr = [[[NSBundle
                              mainBundle]infoDictionary]valueForKey:@"CFBundleShortVersionString"];
    NSString *buildStr = [[[NSBundle
                            mainBundle]infoDictionary]valueForKey:@"CFBundleVersion"];

    NSString *title = [NSString stringWithFormat:@"Ver:%@ 测试\nBuild:%@",versionStr,buildStr];
    CGRect frame = CGRectMake(touchX, touchY, touchW, touchH);

    ZGAssistiveBtn *btn=[ZGAssistiveBtn ZG_touchWithType:ZGAssistiveTouchTypeNone Frame:frame title:title titleColor:[UIColor blackColor] titleFont:[UIFont systemFontOfSize:13] backgroundColor:[UIColor cyanColor] backgroundImage:nil];
    [self.window addSubview:btn];

}


- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end

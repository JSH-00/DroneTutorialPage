//
//  AppDelegate.m
//  DroneTutorialPage
//
//  Created by JSH on 2020/9/24.
//  Copyright © 2020 JSH. All rights reserved.
//

#import "AppDelegate.h"
#import "DroneTutorialCollectionViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];

    DroneTutorialCollectionViewController *vc1 = [DroneTutorialCollectionViewController new];
    UINavigationController *vc1_NA = [[UINavigationController alloc] initWithRootViewController:vc1];
    self.window.rootViewController = vc1_NA;
    [self.window makeKeyAndVisible];
    return YES;
}
- (void)applicationWillResignActive:(UIApplication *)application{
    
}
- (void)applicationDidEnterBackground:(UIApplication *)application{
    
}
- (void)applicationWillEnterForeground:(UIApplication *)application{
    
}
- (void)applicationDidBecomeActive:(UIApplication *)application{
    
}
- (void)applicationWillTerminate:(UIApplication *)application{
    
}
@end

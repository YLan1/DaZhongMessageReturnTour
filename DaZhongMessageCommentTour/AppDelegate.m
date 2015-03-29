//
//  AppDelegate.m
//  DaZhongMessageCommentTour
//
//  Created by YLan on 15/3/27.
//  Copyright (c) 2015年 YLan. All rights reserved.
//

#import "AppDelegate.h"
#import "TitleViewController.h"
#import "TourViewController.h"
#import "FindViewController.h"
#import "MyViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (void)dealloc{
    
    [_window release];
    [super dealloc];
}


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc]initWithFrame:[[UIScreen mainScreen]bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    TitleViewController *titleView = [[[TitleViewController alloc] init] autorelease];
    UINavigationController *titleNav = [[[UINavigationController alloc] initWithRootViewController:titleView] autorelease];
    
    TourViewController *tourView = [[[TourViewController alloc] init] autorelease];
    UINavigationController *tourNav = [[[UINavigationController alloc] initWithRootViewController:tourView] autorelease];
    
    FindViewController *findView = [[[FindViewController alloc] init] autorelease];
    UINavigationController *findNav = [[[UINavigationController alloc] initWithRootViewController:findView] autorelease];
    
    MyViewController *myView = [[[MyViewController alloc] init] autorelease];
    UINavigationController *myNav = [[[UINavigationController alloc] initWithRootViewController:myView] autorelease];
    
    UITabBarController *tabBar = [[[UITabBarController alloc] init] autorelease];
    
    tabBar.viewControllers = @[titleNav, tourNav, findNav, myNav];
    
    self.window.rootViewController = tabBar;
    
    return YES;
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

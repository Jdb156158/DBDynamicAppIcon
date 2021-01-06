//
//  AppDelegate.m
//  DBDynamicAppIcon-Oc
//
//  Created by db J on 2021/1/6.
//

#import "AppDelegate.h"
#import "NewIconsViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    [self.window setRootViewController:[[NewIconsViewController alloc]init]];
    [self.window makeKeyAndVisible];
    return YES;
}

@end

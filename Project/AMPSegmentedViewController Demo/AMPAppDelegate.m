//
//  AMPAppDelegate.m
//  AMPSegmentedViewController Demo
//
//  Created by Alejandro Martinez on 21/09/13.
//  Copyright (c) 2013 Alejandro Martinez. All rights reserved.
//

#import "AMPAppDelegate.h"

#import "AMPSegmentedViewController.h"
#import "TestVC.h"

@implementation AMPAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    [self example1];
//    [self example2];
//    [self example3];
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

// Using addController:
- (void)example1 {
    AMPSegmentedViewController *segmentedVC = [[AMPSegmentedViewController alloc] init];
    [segmentedVC.view setBackgroundColor:[UIColor magentaColor]];
    
    self.window.rootViewController = [[UINavigationController alloc] initWithRootViewController:segmentedVC];
    
    [segmentedVC addController:[TestVC testVCWithTitle:@"The one"]];
    [segmentedVC addController:[TestVC testVCWithTitle:@"The second"]];
    [segmentedVC addController:[TestVC testVCWithTitle:@"^3^"]];
}

// Using addControllers:
- (void)example2 {
    NSArray *controllers = @[[TestVC testVCWithTitle:@"The one"],
                             [TestVC testVCWithTitle:@"The second"],
                             [TestVC testVCWithTitle:@"^3^"]];
    
    AMPSegmentedViewController *segmentedVC = [[AMPSegmentedViewController alloc] init];
    [segmentedVC.view setBackgroundColor:[UIColor magentaColor]];
    
    self.window.rootViewController = [[UINavigationController alloc] initWithRootViewController:segmentedVC];
    
    [segmentedVC addControllers:controllers];
}

// Pushing from another UIViewController
- (void)example3 {
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:[TestVC testVCWithTitle:@"Root" andPushOnAppear:YES]];
    self.window.rootViewController = nav;
}

@end

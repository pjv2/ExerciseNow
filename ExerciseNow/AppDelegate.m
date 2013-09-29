//
//  AppDelegate.m
//  ExerciseNow
//
//  Created by Paul on 9/23/13.
//  Copyright (c) 2013 administrator. All rights reserved.
//

#import "AppDelegate.h"
#import "MasterViewController.h"
#import "ExerciseNowDoc.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    ExerciseNowDoc *exercise1 = [[ExerciseNowDoc alloc] initWithTitle:@"Squats" rating:4 thumbImage:[UIImage imageNamed:@"squats.jpg"] fullImage:[UIImage imageNamed:@"squats.jpg"]];
    ExerciseNowDoc *exercise2 = [[ExerciseNowDoc alloc] initWithTitle:@"Lat Pull Down" rating:3 thumbImage:[UIImage imageNamed:@"latpulldown.jpg"] fullImage:[UIImage imageNamed:@"latpulldown.jpg"]];
    ExerciseNowDoc *exercise3 = [[ExerciseNowDoc alloc] initWithTitle:@"Plank" rating:5 thumbImage:[UIImage imageNamed:@"plank.jpg"] fullImage:[UIImage imageNamed:@"plank.jpg"]];
    ExerciseNowDoc *exercise4 = [[ExerciseNowDoc alloc] initWithTitle:@"Straight Leg Raise" rating:1 thumbImage:[UIImage imageNamed:@"SLR.jpg"] fullImage:[UIImage imageNamed:@"SLR.jpg"]];
    
    NSMutableArray *exercises = [NSMutableArray arrayWithObjects:exercise1, exercise2, exercise3, exercise4, nil];
    
    UINavigationController * navController = (UINavigationController *) self.window.rootViewController;
    MasterViewController * masterController = [navController.viewControllers objectAtIndex:0];
    masterController.exercises = exercises;
    
    return YES;
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

//
//  PDAppDelegate.m
//  PDModelKVMapper
//
//  Created by liang on 11/24/2020.
//  Copyright (c) 2020 liang. All rights reserved.
//

#import "PDAppDelegate.h"
#import <PDModelKVMapper.h>
#import "PDDataModel.h"

@implementation PDAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    [self parse];
    return YES;
}

- (void)parse {
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    dict[@"boolValue"] = @(YES);
    dict[@"int8_value"] = @(-3);
    dict[@"uint8_value"] = @3;
    dict[@"int16_value"] = @(-99);
    dict[@"uint16_value"] = @100;
    dict[@"int32_value"] = @(-111);
    dict[@"uint32_value"] = @222;
    dict[@"int64_value"] = @-8765;
    dict[@"uint64_value"] = @6789;
    dict[@"floatValue"] = @(-2222.2222);
    dict[@"doubleValue"] = @3333.3333;
    dict[@"longDoubleValue"] = @9999.9999;
    dict[@"objectValue"] = [NSMutableDictionary new];
    dict[@"classValue"] = [NSMutableSet class];
    dict[@"sel"] = NSStringFromSelector(@selector(testSEL));

    dict[@"block"] = ^{
        NSLog(@"block log something...");
    };
    
    dict[@"sizeValue"] = [NSValue valueWithCGSize:CGSizeMake(100, 100)];
    dict[@"rectValue"] = [NSValue valueWithCGRect:CGRectMake(10, 10, 200, 200)];
    dict[@"charValue"] = @"char string";
    
    PDDataModel *model = [[PDDataModel alloc] init];
    [[PDModelKVMapper defaultMapper] mapKeyValuePairs:dict toModel:model];
    
    NSLog(@"model = %@", model);
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

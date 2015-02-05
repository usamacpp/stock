//
//  AppDelegate.m
//  searchbar
//
//  Created by osama mourad on 1/30/15.
//  Copyright (c) 2015 osama mourad. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
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

#pragma mark - settings

-(void)savePassword {
}

/*-(NSMutableArray*)loadStockList {
    
    NSMutableArray *stock;
    NSUserDefaults *defs = [NSUserDefaults standardUserDefaults];
    
    NSString *list = [defs stringForKey:@"list"];
    
    if(list == nil) {
        stock = [[NSMutableArray alloc] initWithObjects:@"YINN", @"NUGT", @"INDL", @"ERX", @"RUSS", @"RSX", @"SOXL", nil];
        
        NSString *strStockList = [[NSString alloc] init];
        
        for (int i = 0; i < stock.count; i++) {
            strStockList = [strStockList stringByAppendingString:[stock objectAtIndex: i]];
            
            if (i != stock.count - 1)
                strStockList = [strStockList stringByAppendingString:@","];
        }
        
        [defs setValue:strStockList forKey:@"list"];
        [defs synchronize];
    } else {
        stock = [NSMutableArray arrayWithArray: [list componentsSeparatedByString:@","]];
    }
    
    return stock;
}*/

-(NSMutableArray*)loadStockList {
    
    NSMutableArray *stock;
    NSUserDefaults *defs = [NSUserDefaults standardUserDefaults];
    
    NSString *list = [defs objectForKey:@"listArray"];
    
    if(list == nil) {
        stock = [[NSMutableArray alloc] initWithObjects:@"YINN", @"NUGT", @"INDL", @"ERX", @"RUSS", @"RSX", @"SOXL", nil];
        
        [self saveStockListArray:stock];
    } else {
        stock = [self loadStockListArray];
    }
    
    return stock;
}

-(NSMutableArray*)loadStockListArray {
    
    NSUserDefaults *defs = [NSUserDefaults standardUserDefaults];
    
    return [[defs objectForKey:@"listArray"] mutableCopy];
}

-(void)saveStockListArray:(NSMutableArray*)stock {
    NSUserDefaults *defs = [NSUserDefaults standardUserDefaults];
    
    [defs setObject:stock forKey:@"listArray"];
    [defs synchronize];
}

@end

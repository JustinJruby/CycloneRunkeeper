//
//  AppDelegate.h
//  runkeeper
//
//  Created by justin evaniew on 2013-11-16.
//  Copyright (c) 2013 justin evaniew. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RunKeeper.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate, RunKeeperConnectionDelegate>
//RunKeeperConnectionDelegate
@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic)  RunKeeper *runkeeperObj;
- (RunKeeper *)getRunkeeperObj;

@end

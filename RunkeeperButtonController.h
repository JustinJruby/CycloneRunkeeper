//
//  RunkeeperButtonController.h
//  runkeeper
//
//  Created by justin evaniew on 2013-11-16.
//  Copyright (c) 2013 justin evaniew. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RunKeeper.h"
#import "AppDelegate.h"
#import "GridViewController.h"

@interface RunkeeperButtonController : UIViewController 
@property (weak, nonatomic) IBOutlet UITableView *time;
@property (weak, nonatomic) IBOutlet UITableView *category;
@property (weak,nonatomic) GridViewController * checkVC;

- (IBAction)sendToStormCenter:(id)sender;

@property (weak, nonatomic) IBOutlet UIDatePicker *workoutDate;

@property (weak, nonatomic) IBOutlet UIView *gridInfo;

@end

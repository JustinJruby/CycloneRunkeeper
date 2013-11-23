//
//  RunkeeperButtonController.m
//  runkeeper
//
//  Created by justin evaniew on 2013-11-16.
//  Copyright (c) 2013 justin evaniew. All rights reserved.
//

#import "RunkeeperButtonController.h"

@interface RunkeeperButtonController ()

@end

@implementation RunkeeperButtonController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)sendToStormCenter:(id)sender {
  //  ( NSObject <UIApplicationDelegate> * ) [ [ UIApplication sharedApplication ] delegate ];
    
//NSLog([self.time indexPathsForSelectedRows]);
    
    NSLog(self.workoutDate.date.description);

    RunKeeper *runKeeperGuy = [[[UIApplication sharedApplication] delegate] performSelector:@selector(getRunkeeperObj)];
    
    [runKeeperGuy postActivity:kRKCycling start:self.workoutDate.date                         distance:[NSNumber numberWithFloat:0]
                        duration:self.checkVC.timeLabel
                        calories:nil
                       avgHeartRate:nil
                           notes: [NSString stringWithFormat: @"Cyclone Workout! - %@", self.checkVC.catLabel]
                            path:nil
                    heartRatePoints:nil
                         success:^{
                             UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Success"
                                                                              message:@"Your activity was posted to your RunKeeper account."
                                                                             delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
                             [alert show];
                             
                         }
                          failed:^(NSError *err){
                              NSString *msg = [NSString stringWithFormat:@"Upload to RunKeeper failed: %@", [err localizedDescription]];
                              UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Failed"
                                                                               message:msg
                                                                              delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
                              [alert show];
                          }];
    
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
        self.checkVC = segue.destinationViewController;
}


@end

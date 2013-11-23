//
//  GridViewController.h
//  runkeeper
//
//  Created by justin evaniew on 2013-11-16.
//  Copyright (c) 2013 justin evaniew. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GridViewController : UITableViewController

@property (nonatomic, retain) NSIndexPath* timeCheckedIndexPath;
@property (nonatomic, retain) NSIndexPath* stormCheckedIndexPath;
@property (nonatomic, retain) NSNumber* timeLabel;
@property (nonatomic, retain) NSString* catLabel;

@property (nonatomic, retain) UITableView* first;

- (void)tableViewCat:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath;
- (void)tableViewTime:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath;


@end

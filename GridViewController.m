//
//  GridViewController.m
//  runkeeper
//
//  Created by justin evaniew on 2013-11-16.
//  Copyright (c) 2013 justin evaniew. All rights reserved.
//

#import "GridViewController.h"

@interface GridViewController ()

@end

@implementation GridViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        self.first = 0;
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)tableViewCat:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    // Uncheck the previous checked row
    
    
    if(self.stormCheckedIndexPath)
    {
        UITableViewCell* uncheckCell = [tableView
                                        cellForRowAtIndexPath:self.stormCheckedIndexPath];
        
        uncheckCell.accessoryType = UITableViewCellAccessoryNone;
    }
    if([self.stormCheckedIndexPath isEqual:indexPath])
    {
        self.stormCheckedIndexPath = nil;
    }
    else
    {
        UITableViewCell* cell = [tableView cellForRowAtIndexPath:indexPath];
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
        self.stormCheckedIndexPath = indexPath;
        
        if(indexPath.row == 0){
            self.catLabel = @"Cat 1";
        }else if(indexPath.row == 1){
            self.catLabel = @"Cat 2";
        }else if(indexPath.row == 2){
            self.catLabel = @"Cat 3";
        }else if(indexPath.row == 3){
            self.catLabel = @"Cat 4";
        }else if(indexPath.row == 4){
            self.catLabel = @"Cat 5";
        }
    }
}

- (void)tableViewTime:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    // Uncheck the previous checked row
    
    
    if(self.timeCheckedIndexPath)
    {
        UITableViewCell* uncheckCell = [tableView
                                        cellForRowAtIndexPath:self.timeCheckedIndexPath];
        
        uncheckCell.accessoryType = UITableViewCellAccessoryNone;
    }
    if([self.timeCheckedIndexPath isEqual:indexPath])
    {
        self.timeCheckedIndexPath = nil;
    }
    else
    {
        UITableViewCell* cell = [tableView cellForRowAtIndexPath:indexPath];
        cell.accessoryType = UITableViewCellAccessoryCheckmark;

        if(indexPath.row == 0)
            self.timeLabel = [NSNumber numberWithInteger:45];
        else{
           self.timeLabel = [NSNumber numberWithInteger:90];
        }
        self.timeCheckedIndexPath = indexPath;
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
   
    UITableViewHeaderFooterView* header =[self.tableView headerViewForSection:indexPath.section];
    //NSLog(@"Header text = %@", header.textLabel.text);

    if ([header.textLabel.text isEqual:@"Time" ]){

        [self tableViewTime:tableView didSelectRowAtIndexPath:indexPath];
    }else{

        [self tableViewCat:tableView didSelectRowAtIndexPath:indexPath];
    }
}
@end

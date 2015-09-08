//
//  TableViewController.h
//  UITableViewController Challenge Solution
//
//  Created by Emmanuel Cuevas on 8/4/15.
//  Copyright (c) 2015 Emmanuel Cuevas. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddSpaceObjectViewController.h"

@interface TableViewController : UITableViewController <AddSpaceObjectViewControllerDelegate>

@property (strong, nonatomic) NSMutableArray *planetInformation;
@property (strong, nonatomic) NSMutableArray *addSpaceObjects;

@end

//
//  SpaceDataViewController.h
//  UITableViewController Challenge Solution
//
//  Created by Emmanuel Cuevas on 8/22/15.
//  Copyright (c) 2015 Emmanuel Cuevas. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "OutSpaceObject.h"

@interface SpaceDataViewController : UIViewController <UITableViewDelegate,UITableViewDataSource>
@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) OutSpaceObject *spaceObject;
@end

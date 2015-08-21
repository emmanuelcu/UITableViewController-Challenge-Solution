//
//  OutSpaceImageViewController.h
//  UITableViewController Challenge Solution
//
//  Created by Emmanuel Cuevas on 8/16/15.
//  Copyright (c) 2015 Emmanuel Cuevas. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "OutSpaceObject.h"

@interface OutSpaceImageViewController : UIViewController  <UIScrollViewDelegate>

@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;
@property (strong, nonatomic) UIImageView *image;
@property (strong, nonatomic) OutSpaceObject *spaceObject;

@end

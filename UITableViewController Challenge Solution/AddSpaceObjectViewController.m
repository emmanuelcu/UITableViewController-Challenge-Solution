//
//  AddSpaceObjectViewController.m
//  UITableViewController Challenge Solution
//
//  Created by Emmanuel Cuevas on 9/5/15.
//  Copyright (c) 2015 Emmanuel Cuevas. All rights reserved.
//

#import "AddSpaceObjectViewController.h"

@interface AddSpaceObjectViewController ()

@end

@implementation AddSpaceObjectViewController

-(void)viewDidLoad{
    
    [super viewDidLoad];
    
    UIImage *orionImage = [UIImage imageNamed: @"space.png"];
    self.view.backgroundColor = [UIColor colorWithPatternImage:orionImage];

}

-(void)didReceiveMemoryWarning{
    
    [super didReceiveMemoryWarning];
    
}

- (IBAction)cancelButtonPressed:(UIButton *)sender {
}

- (IBAction)addButtonPressed:(UIButton *)sender {
}
@end

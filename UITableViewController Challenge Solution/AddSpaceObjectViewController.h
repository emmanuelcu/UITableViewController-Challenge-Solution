//
//  AddSpaceObjectViewController.h
//  UITableViewController Challenge Solution
//
//  Created by Emmanuel Cuevas on 9/5/15.
//  Copyright (c) 2015 Emmanuel Cuevas. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddSpaceObjectViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *nameTextfield;

@property (strong, nonatomic) IBOutlet UITextField *gravityTextfield;

@property (strong, nonatomic) IBOutlet UITextField *diameterTextfield;

@property (strong, nonatomic) IBOutlet UITextField *yearLengthTextfield;

@property (strong, nonatomic) IBOutlet UITextField *dayLengthTextfield;

@property (strong, nonatomic) IBOutlet UITextField *temperatureTextfield;

@property (strong, nonatomic) IBOutlet UITextField *numberMoonsTextfield;

@property (strong, nonatomic) IBOutlet UITextField *nameSpanishTextfield;

- (IBAction)cancelButtonPressed:(UIButton *)sender;

- (IBAction)addButtonPressed:(UIButton *)sender;

@end

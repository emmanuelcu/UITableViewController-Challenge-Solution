//
//  AddSpaceObjectViewController.h
//  UITableViewController Challenge Solution
//
//  Created by Emmanuel Cuevas on 9/5/15.
//  Copyright (c) 2015 Emmanuel Cuevas. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "OutSpaceObject.h"



@protocol AddSpaceObjectViewControllerDelegate <NSObject>

@required

-(void)addSpaceObject: (OutSpaceObject *)spaceObject;
-(void)didCancel;

@end

@interface AddSpaceObjectViewController : UIViewController

@property (weak, nonatomic) id <AddSpaceObjectViewControllerDelegate> delegate;

@property (strong, nonatomic) IBOutlet UITextField *nameTextfield;

@property (strong, nonatomic) IBOutlet UITextField *gravityTextfield;

@property (strong, nonatomic) IBOutlet UITextField *diameterTextfield;

@property (strong, nonatomic) IBOutlet UITextField *yearLengthTextfield;

@property (strong, nonatomic) IBOutlet UITextField *dayLengthTextfield;

@property (strong, nonatomic) IBOutlet UITextField *temperatureTextfield;

@property (strong, nonatomic) IBOutlet UITextField *numberMoonsTextfield;

@property (strong, nonatomic) IBOutlet UITextField *nameSpanishTextfield;

@property (strong, nonatomic) IBOutlet UITextField *interestingfactsTextfield;

- (IBAction)cancelButtonPressed:(UIButton *)sender;

- (IBAction)addButtonPressed:(UIButton *)sender;

@end

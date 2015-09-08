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
    
    [self.delegate didCancel];
}

- (IBAction)addButtonPressed:(UIButton *)sender {
    
    //Once you modify the protocol you have to pass the information to the method returnNewSpaceObject, also you pointed to newSpaceObject.
    
    OutSpaceObject *newSpaceObject = [self returnNewSpaceObject];
    [self.delegate addSpaceObject:newSpaceObject];
}

-(OutSpaceObject *)returnNewSpaceObject{
    
    OutSpaceObject *addedObject = [[OutSpaceObject alloc] init];
    addedObject.name = self.nameTextfield.text;
    addedObject.gravitationalForce = [self.gravityTextfield.text floatValue];
    addedObject.diameter = [self.diameterTextfield.text floatValue];
    addedObject.yearLength = [self.yearLengthTextfield.text floatValue];
    addedObject.dayLength = [self.dayLengthTextfield.text floatValue];
    addedObject.temperature = [self.temperatureTextfield.text floatValue];
    addedObject.numberOfMoons = [self.numberMoonsTextfield.text intValue];
    addedObject.nameInSpanish = self.nameSpanishTextfield.text;
    addedObject.interestingFacts = self.interestingfactsTextfield.text;
    
    return addedObject;
}
@end

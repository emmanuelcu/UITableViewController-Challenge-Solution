//
//  OutSpaceObject.h
//  UITableViewController Challenge Solution
//
//  Created by Emmanuel Cuevas on 8/13/15.
//  Copyright (c) 2015 Emmanuel Cuevas. All rights reserved.
//

#import <Foundation/Foundation.h>
@import UIKit;


@interface OutSpaceObject : NSObject

@property (strong, nonatomic) NSString *name;
@property (nonatomic) float gravitationalForce;
@property (nonatomic) float diameter;
@property (nonatomic) float yearLength;
@property (nonatomic) float dayLength;
@property (nonatomic) float temperature;
@property (nonatomic) int numberOfMoons;
@property (strong, nonatomic) NSString *nameInSpanish;
@property (strong, nonatomic) NSString *interestingFacts;
@property (strong) UIImage *spaceImage;

-(id) initWithData : (NSDictionary * ) data andImage : (UIImage *) image;

@end

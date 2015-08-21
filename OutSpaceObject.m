//
//  OutSpaceObject.m
//  UITableViewController Challenge Solution
//
//  Created by Emmanuel Cuevas on 8/13/15.
//  Copyright (c) 2015 Emmanuel Cuevas. All rights reserved.
//

#import "OutSpaceObject.h"
#import "astronomicalData.h"


@implementation OutSpaceObject

-(id) init
{

    self = [self initWithData: nil andImage : nil];
    return self;
}


-(id) initWithData : (NSDictionary * ) data andImage : (UIImage *) image{
    self = [super init];
    self.name = data[PLANET_NAME];
    self.gravitationalForce = [data [PLANET_GRAVITY] floatValue];
    self.diameter = [data[PLANET_DIAMETER] floatValue];
    self.yearLength = [data[PLANET_YEAR_LENGTH] floatValue];
    self.dayLength = [data[PLANET_DAY_LENGTH] floatValue];
    self.temperature = [data[PLANET_TEMPERATURE] floatValue];
    self.numberOfMoons = [data[PLANET_NUMBER_OF_MOONS] intValue];
    self.nameInSpanish = data[PLANET_NAME_IN_SPANISH];
    self.interestingFacts = data[PLANET_INTERESTING_FACT];
    self.spaceImage = image;
    
    return self;

}

@end

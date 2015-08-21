//
//  astronomicalData.m
//  UITableViewController Challenge Solution
//
//  Created by Emmanuel Cuevas on 8/13/15.
//  Copyright (c) 2015 Emmanuel Cuevas. All rights reserved.
//

#import "astronomicalData.h"

@implementation astronomicalData

+(NSArray *) planetsInSolarSystem

{

    NSMutableArray *planetInformation = [@[] mutableCopy];
    
    NSDictionary *mercuryDictionary = @{   PLANET_NAME : @"Mercury",
                                           PLANET_GRAVITY : @3.7,
                                           PLANET_DIAMETER : @345,
                                           PLANET_YEAR_LENGTH : @2.3,
                                           PLANET_DAY_LENGTH : @3,
                                           PLANET_TEMPERATURE : @234,
                                           PLANET_NUMBER_OF_MOONS : @0,
                                           PLANET_NAME_IN_SPANISH : @"Mercurio",
                                           PLANET_INTERESTING_FACT : @"The first planet in the solar system"};
    [planetInformation addObject:mercuryDictionary ];
    
    NSDictionary *venusDictionary = @{   PLANET_NAME : @"Venus",
                                           PLANET_GRAVITY : @2.3,
                                           PLANET_DIAMETER : @332,
                                           PLANET_YEAR_LENGTH : @2,
                                           PLANET_DAY_LENGTH : @3.5,
                                           PLANET_TEMPERATURE : @2567,
                                           PLANET_NUMBER_OF_MOONS : @0,
                                           PLANET_NAME_IN_SPANISH : @"Venus",
                                           PLANET_INTERESTING_FACT : @"Is the planet with the highest temperature in the solar system"};
    [planetInformation addObject:venusDictionary ];
    
    NSDictionary *earthDictionary = @{   PLANET_NAME : @"Earth",
                                           PLANET_GRAVITY : @1,
                                           PLANET_DIAMETER : @2323,
                                           PLANET_YEAR_LENGTH : @365,
                                           PLANET_DAY_LENGTH : @24,
                                           PLANET_TEMPERATURE : @34,
                                           PLANET_NUMBER_OF_MOONS : @1,
                                           PLANET_NAME_IN_SPANISH : @"Tierra",
                                           PLANET_INTERESTING_FACT : @"The only planet that has life"};
    [planetInformation addObject:earthDictionary ];
    
    NSDictionary *marsDictionary = @{   PLANET_NAME : @"Mars",
                                         PLANET_GRAVITY : @1,
                                         PLANET_DIAMETER : @2323,
                                         PLANET_YEAR_LENGTH : @365,
                                         PLANET_DAY_LENGTH : @24,
                                         PLANET_TEMPERATURE : @34,
                                         PLANET_NUMBER_OF_MOONS : @1,
                                         PLANET_NAME_IN_SPANISH : @"Marte",
                                         PLANET_INTERESTING_FACT : @"This planet seems like the earth"};
    [planetInformation addObject:marsDictionary ];
    
    NSDictionary *jupiterDictionary = @{   PLANET_NAME : @"Jupiter",
                                         PLANET_GRAVITY : @1,
                                         PLANET_DIAMETER : @2323,
                                         PLANET_YEAR_LENGTH : @365,
                                         PLANET_DAY_LENGTH : @24,
                                         PLANET_TEMPERATURE : @34,
                                         PLANET_NUMBER_OF_MOONS : @1,
                                         PLANET_NAME_IN_SPANISH : @"Jupiter",
                                         PLANET_INTERESTING_FACT : @"The biggest planet in the solar system"};
    [planetInformation addObject:jupiterDictionary ];
    
    NSDictionary *saturnDictionary = @{   PLANET_NAME : @"Saturn",
                                         PLANET_GRAVITY : @1,
                                         PLANET_DIAMETER : @2323,
                                         PLANET_YEAR_LENGTH : @365,
                                         PLANET_DAY_LENGTH : @24,
                                         PLANET_TEMPERATURE : @34,
                                         PLANET_NUMBER_OF_MOONS : @1,
                                         PLANET_NAME_IN_SPANISH : @"Saturno",
                                         PLANET_INTERESTING_FACT : @"The only planet with belts"};
    [planetInformation addObject:saturnDictionary ];
    
    NSDictionary *uranusDictionary = @{   PLANET_NAME : @"Uranus",
                                         PLANET_GRAVITY : @1,
                                         PLANET_DIAMETER : @2323,
                                         PLANET_YEAR_LENGTH : @365,
                                         PLANET_DAY_LENGTH : @24,
                                         PLANET_TEMPERATURE : @34,
                                         PLANET_NUMBER_OF_MOONS : @1,
                                         PLANET_NAME_IN_SPANISH : @"Urano",
                                         PLANET_INTERESTING_FACT : @"The blue planet that has no water"};
    [planetInformation addObject:uranusDictionary ];
    
    NSDictionary *neptunDictionary = @{   PLANET_NAME : @"Neptune",
                                         PLANET_GRAVITY : @1,
                                         PLANET_DIAMETER : @2323,
                                         PLANET_YEAR_LENGTH : @365,
                                         PLANET_DAY_LENGTH : @24,
                                         PLANET_TEMPERATURE : @34,
                                         PLANET_NUMBER_OF_MOONS : @1,
                                         PLANET_NAME_IN_SPANISH : @"Neptuno",
                                         PLANET_INTERESTING_FACT : @"The last planet"};
    [planetInformation addObject:neptunDictionary ];
    
    
    return [planetInformation copy];
    
    

}

@end

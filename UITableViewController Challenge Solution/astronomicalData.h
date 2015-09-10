//
//  astronomicalData.h
//  UITableViewController Challenge Solution
//
//  Created by Emmanuel Cuevas on 8/13/15.
//  Copyright (c) 2015 Emmanuel Cuevas. All rights reserved.
//

#import <UIKit/UIKit.h>

#define PLANET_NAME @"planet_name"
#define PLANET_GRAVITY @"planet_gravity"
#define PLANET_DIAMETER @"planet_diameter"
#define PLANET_YEAR_LENGTH @"planet_year_length"
#define PLANET_DAY_LENGTH @"planet_day_length"
#define PLANET_TEMPERATURE @"planet_temperature"
#define PLANET_NUMBER_OF_MOONS @"planet_number_of_moons"
#define PLANET_NAME_IN_SPANISH @"planet_name_in_spanish"
#define PLANET_INTERESTING_FACT @"planet_interesting_fact"
#define PLANET_IMAGE @"planet_image"

@interface astronomicalData : UIViewController



+ (NSArray *) planetsInSolarSystem;


@end

//
//  SpaceDataViewController.m
//  UITableViewController Challenge Solution
//
//  Created by Emmanuel Cuevas on 8/22/15.
//  Copyright (c) 2015 Emmanuel Cuevas. All rights reserved.
//

#import "SpaceDataViewController.h"


@implementation SpaceDataViewController

-(void) viewDidLoad{

    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor blackColor];
    self.tableView.backgroundColor = [UIColor clearColor];
}


-(void) didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
}

#pragma mark - UITableview


-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
static NSString *cellIdentifier = @"Datacell";
    UITableViewCell *cell  = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    
    switch (indexPath.row) {
        case 0:
            cell.textLabel.text =@"Nickname :";
            cell.detailTextLabel.text=self.spaceObject.nameInSpanish;
            break;
        
        case 1:
            cell.textLabel.text =@"Diameter (km) :";
            cell.detailTextLabel.text= [NSString stringWithFormat:@"%f", self.spaceObject.diameter];
            break;
            
        case 2:
            cell.textLabel.text =@"Gravitational Force:";
            cell.detailTextLabel.text= [NSString stringWithFormat:@"%f", self.spaceObject.gravitationalForce];
            break;
            
        case 3:
            cell.textLabel.text =@"Lenght of a year (days) :";
            cell.detailTextLabel.text= [NSString stringWithFormat:@"%f", self.spaceObject.yearLength];
            break;
            
        case 4:
            cell.textLabel.text =@"Lenght of a day(hours) :";
            cell.detailTextLabel.text= [NSString stringWithFormat:@"%f", self.spaceObject.dayLength];
            break;
            
        case 5:
            cell.textLabel.text =@"Temperature (celcius) :";
            cell.detailTextLabel.text= [NSString stringWithFormat:@"%f", self.spaceObject.temperature];
            break;
            
        case 6:
            cell.textLabel.text =@"Number of moons :";
            cell.detailTextLabel.text= [NSString stringWithFormat:@"%i", self.spaceObject.numberOfMoons];
            break;
            
        case 7:
            cell.textLabel.text =@"Interesting facts :";
            cell.detailTextLabel.text= self.spaceObject.interestingFacts;
            break;
            
        default:
            break;
    }
    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 8;
}
@end

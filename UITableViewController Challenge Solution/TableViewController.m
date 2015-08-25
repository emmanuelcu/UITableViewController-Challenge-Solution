//
//  TableViewController.m
//  UITableViewController Challenge Solution
//
//  Created by Emmanuel Cuevas on 8/4/15.
//  Copyright (c) 2015 Emmanuel Cuevas. All rights reserved.
//

#import "TableViewController.h"
#import "astronomicalData.h"
#import "OutSpaceObject.h"
#import "OutSpaceImageViewController.h"
#import "SpaceDataViewController.h"



@implementation TableViewController

-(void)viewDidLoad{

    [super viewDidLoad];
    
   //Exercise for use dictionary
    
    
    /*
     
     //Instead of filled our array with string we will fill it with outOfSpace objects.
     NSString *planet1 = @"Mercury";
     NSString *planet2 = @"Venus";
     NSString *planet3 = @"Earth";
     NSString *planet4 = @"Mars";
     NSString *planet5 = @"Jupiter";
     NSString *planet6 = @"Saturn";
     NSString *planet7 = @"Uranus";
     NSString *planet8 = @"Neptun";
     
    
    self.planetInformation = [[NSMutableArray alloc] initWithObjects:planet1, planet2, planet3, planet4, planet5, planet6, planet7, planet8, nil];
    
    */
    
    //Array for fill the array with objects.
    self.planetInformation = [[NSMutableArray alloc] init];
    
    for (NSMutableDictionary *planetData in [astronomicalData planetsInSolarSystem]) {
        NSString *imageName = [NSString stringWithFormat:@"%@.jpg", planetData [PLANET_NAME]];
        
        OutSpaceObject *planet = [[OutSpaceObject alloc] initWithData:planetData andImage:[UIImage imageNamed:imageName]];
        [self.planetInformation addObject: planet];
    }
    
    
    

}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([sender isKindOfClass:[UITableView class]]) {
        if ([segue.destinationViewController isKindOfClass:[OutSpaceImageViewController class]]) {
            OutSpaceImageViewController *nextViewController = segue.destinationViewController;
            NSIndexPath *path = [self.tableView indexPathForCell:sender];
            OutSpaceObject *selectedObject = [self.planetInformation objectAtIndex:path.row];
            nextViewController.spaceObject = selectedObject;
            
        }
    }
    if ([sender isKindOfClass: [NSIndexPath class]]) {
        if ([segue.destinationViewController isKindOfClass:[SpaceDataViewController class]]) {
            SpaceDataViewController *targetViewController = segue.destinationViewController;
            NSIndexPath *path = sender;
            SpaceDataViewController *selectedObject = self.planetInformation[path.row];
            targetViewController.spaceObject = selectedObject;
        }
    }
}

-(void)didReceiveMemoryWarning{

    [super didReceiveMemoryWarning];
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return [self.planetInformation count];

   /* if (section == 0) {
        return 2;
    }else if (section == 1){
        return 1;
    }else {
        return 3;
    }*/
    

}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *CellIdentifier =@"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    //Configure the cell name
    
    //cell.textLabel.text = [self.planetInformation objectAtIndex:indexPath.row];
    
    OutSpaceObject *planet = [self.planetInformation objectAtIndex:indexPath.row];
    cell.textLabel.text = planet.name;
    cell.detailTextLabel.text = planet.nameInSpanish;
    cell.imageView.image = planet.spaceImage;
    
    cell.backgroundColor = [UIColor blackColor];
    cell.textLabel.textColor = [UIColor whiteColor];
    cell.detailTextLabel.textColor = [UIColor whiteColor];
    
    /*
    
  
    if (indexPath.section==0) {
        //cell.textLabel.text = @"Im insection 0";
        cell.backgroundColor = [UIColor colorWithRed:.175781 green:.88 blue:1 alpha:1];
    }else if (indexPath.section==1){
        //cell.textLabel.text = @"Another section";
    }else{
        cell.textLabel.text= [NSString stringWithFormat:@"cell %li", (long)indexPath.row];
   }
   */
     
    


    return cell;
    

}

#pragma mark UITableViewDelegate

-(void)tableView:(UITableView *)tableView accessoryButtonTappedForRowWithIndexPath:(NSIndexPath *)indexPath{
    [self performSegueWithIdentifier:@"push to planets info" sender:indexPath];
}

@end

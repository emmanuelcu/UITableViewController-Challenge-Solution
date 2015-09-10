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


@interface TableViewController ()

@end
@implementation TableViewController
#define ADDED_SPACE_OBJECTS_KEY @"Added Space Objects Array"

#pragma -mark Lazy instantiation for properties.

-(NSMutableArray *)planetInformation{
    if (!_planetInformation) {
        _planetInformation = [[NSMutableArray alloc] init];
    }
    return _planetInformation;
}

-(NSMutableArray *)addSpaceObjects{
    if (!_addSpaceObjects) {
        _addSpaceObjects = [[NSMutableArray alloc]init];
    }
    return _addSpaceObjects;
}

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
    //self.planetInformation = [[NSMutableArray alloc] init];
    
    //for instance to show the planet image in a small version
    for (NSMutableDictionary *planetData in [astronomicalData planetsInSolarSystem]) {
        NSString *imageName = [NSString stringWithFormat:@"%@.jpg", planetData [PLANET_NAME]];
        
        OutSpaceObject *planet = [[OutSpaceObject alloc] initWithData:planetData andImage:[UIImage imageNamed:imageName]];
        [self.planetInformation addObject: planet];
    }
    
    
    NSArray *myPlanetsAsPropertyLists = [[NSUserDefaults standardUserDefaults] arrayForKey:ADDED_SPACE_OBJECTS_KEY];
    
    for (NSDictionary *dictionary in myPlanetsAsPropertyLists){
        
            OutSpaceObject *spaceObject = [self spaceObjectForDictionary: dictionary];
            [self.addSpaceObjects addObject:spaceObject];
        
        
        
            }

}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    //the problem experimented here was caused by the UITableViewCell because if the cell is compared it will show the image to the SpaceImageViewController.
    if ([sender isKindOfClass:[UITableViewCell class]]) {
        if ([segue.destinationViewController isKindOfClass:[OutSpaceImageViewController class]]) {
            OutSpaceImageViewController *nextViewController = segue.destinationViewController;
            NSIndexPath *path = [self.tableView indexPathForCell:sender];
            OutSpaceObject *selectedObject; //= [self.planetInformation objectAtIndex:path.row];
            
            if (path.section == 0) {
                selectedObject = self.planetInformation[path.row];
            }else if (path.section ==1){
                selectedObject = self.addSpaceObjects[path.row];
            }
            
            nextViewController.spaceObject = selectedObject;
            
        }
    }
    if ([sender isKindOfClass: [NSIndexPath class]]) {
        if ([segue.destinationViewController isKindOfClass:[SpaceDataViewController class]]) {
            SpaceDataViewController *targetViewController = segue.destinationViewController;
            NSIndexPath *path = sender;
            SpaceDataViewController *selectedObject;// = self.planetInformation[path.row];
            if (path.section == 0) {
                selectedObject = self.planetInformation[path.row];
            }else if (path.section ==1){
                selectedObject = self.addSpaceObjects[path.row];
            }
            targetViewController.spaceObject = selectedObject;
            
            //this part of the code makes that all the objects information are shown in the i button. 
        }
    }
    
    if ([segue.destinationViewController isKindOfClass: [AddSpaceObjectViewController class]]) {
        AddSpaceObjectViewController *addSpaceObjectVC = segue.destinationViewController;
        addSpaceObjectVC.delegate = self;
    }
}

#pragma mark AddSpaceObjectViewController method


-(void)addSpaceObject:(OutSpaceObject *)spaceObject{
    
  /*  if (!self.addSpaceObjects) {
        self.addSpaceObjects = [[NSMutableArray alloc] init];
    }*/
    
    [self.addSpaceObjects addObject:spaceObject];
    
    //Will save to NSUserDefaults here
    
    
    NSMutableArray *spaceObjectsAsPropertyLists = [[[NSUserDefaults standardUserDefaults] arrayForKey:ADDED_SPACE_OBJECTS_KEY] mutableCopy];
    
    if (!spaceObjectsAsPropertyLists) {
        spaceObjectsAsPropertyLists = [[NSMutableArray alloc] init];
    }
    
    [spaceObjectsAsPropertyLists addObject:[self spaceObjectsAsAPropertyList:spaceObject]];
    
    [[NSUserDefaults standardUserDefaults] setObject:spaceObjectsAsPropertyLists forKey:ADDED_SPACE_OBJECTS_KEY];
    
    [[NSUserDefaults standardUserDefaults] synchronize];
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
    [self.tableView reloadData];
    
    NSLog(@"addSpaceObject");
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void)didCancel{
    NSLog(@"didCancel");
    [self dismissViewControllerAnimated:YES completion:nil];    
}

-(void)didReceiveMemoryWarning{

    [super didReceiveMemoryWarning];
}

#pragma mark - Helper Methods

-(NSDictionary *)spaceObjectsAsAPropertyList:(OutSpaceObject *)spaceObject{

    NSData *imageData = UIImagePNGRepresentation(spaceObject.spaceImage);
    NSDictionary *dictionary = @{PLANET_NAME : spaceObject.name, PLANET_GRAVITY : @(spaceObject.gravitationalForce), PLANET_DIAMETER : @(spaceObject.diameter), PLANET_YEAR_LENGTH : @(spaceObject.yearLength), PLANET_DAY_LENGTH : @(spaceObject.dayLength), PLANET_TEMPERATURE : @(spaceObject.temperature), PLANET_NUMBER_OF_MOONS : @(spaceObject.numberOfMoons), PLANET_NAME_IN_SPANISH : spaceObject.nameInSpanish, PLANET_INTERESTING_FACT : spaceObject.interestingFacts, PLANET_IMAGE : imageData};
    
    return dictionary;
    
}

-(OutSpaceObject *)spaceObjectForDictionary: (NSDictionary *)dictionary{
    
    NSData *dataForImage = dictionary [PLANET_IMAGE];
    UIImage *spaceObjectImage = [UIImage imageWithData:dataForImage];
    OutSpaceObject *spaceObject = [[OutSpaceObject alloc] initWithData:dictionary andImage: spaceObjectImage];
    
    return spaceObject;

}

#pragma mark - Table Properties

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    //Here the code will count if some object has been added to the addSpace Object

    if ([self.addSpaceObjects count]) {
        return 2;
    }else{
    
        return 1;
        
    }
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    //Here the code will review if one element has been added and will return the object
    
    if (section == 1) {
        return [self.addSpaceObjects count];
    }else {
    
        return [self.planetInformation count];
        
    }

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
    
    
    if (indexPath.section == 1) {
        
        //Here is the new code to add the objects
        
        OutSpaceObject *planet = [self.addSpaceObjects objectAtIndex:indexPath.row];
        cell.textLabel.text = planet.name;
        cell.detailTextLabel.text = planet.nameInSpanish;
        cell.imageView.image = [UIImage imageNamed:@"EinsteinRing.jpg"];
        
        //color cell configuration
        cell.backgroundColor = [UIColor blackColor];
        cell.textLabel.textColor = [UIColor whiteColor];
        cell.detailTextLabel.textColor = [UIColor whiteColor];
    }else {
    
    //cell.textLabel.text = [self.planetInformation objectAtIndex:indexPath.row];
    
            OutSpaceObject *planet = [self.planetInformation objectAtIndex:indexPath.row];
            cell.textLabel.text = planet.name;
            cell.detailTextLabel.text = planet.nameInSpanish;
            cell.imageView.image = planet.spaceImage;
    
        
        //color cell configuration
            cell.backgroundColor = [UIColor blackColor];
            cell.textLabel.textColor = [UIColor whiteColor];
            cell.detailTextLabel.textColor = [UIColor whiteColor];
    
    }
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

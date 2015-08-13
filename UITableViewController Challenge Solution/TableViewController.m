//
//  TableViewController.m
//  UITableViewController Challenge Solution
//
//  Created by Emmanuel Cuevas on 8/4/15.
//  Copyright (c) 2015 Emmanuel Cuevas. All rights reserved.
//

#import "TableViewController.h"

@implementation TableViewController

-(void)viewDidLoad{

    [super viewDidLoad];

}

-(void)didReceiveMemoryWarning{

    [super didReceiveMemoryWarning];
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 3;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    if (section == 0) {
        return 2;
    }else if (section == 1){
        return 1;
    }else {
        return 3;
    }
    

}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    //Configure the cell
    static NSString *CellIdentifier =@"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    
  
    if (indexPath.section==0) {
        cell.textLabel.text = @"Im insection 0";
    }else if (indexPath.section==1){
        cell.textLabel.text = @"Another section";
    }else{
        cell.textLabel.text= [NSString stringWithFormat:@"cell %li", (long)indexPath.row];
    }

    return cell;
    

}


@end

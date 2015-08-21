//
//  OutSpaceImageViewController.m
//  UITableViewController Challenge Solution
//
//  Created by Emmanuel Cuevas on 8/16/15.
//  Copyright (c) 2015 Emmanuel Cuevas. All rights reserved.
//

#import "OutSpaceImageViewController.h"

@implementation OutSpaceImageViewController

- (void) viewDidLoad {
    [super viewDidLoad];
    
    self.image = [[UIImageView alloc] initWithImage: self.spaceObject.spaceImage];
    self.scrollView.contentSize = self.image.frame.size;
    [self.scrollView addSubview:self.image];
    self.scrollView.delegate = self;
    self.scrollView.maximumZoomScale = 2.0;
    self.scrollView.minimumZoomScale = 0.5;
    

}


- (void) didReceiveMemoryWarning{

    [super didReceiveMemoryWarning];
    

}

-(UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView{
    return self.image;
    

}
@end

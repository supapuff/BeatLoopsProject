//
//  LocationViewController.m
//  BeatLoops
//
//  Created by admin on 3/14/13.
//  Copyright (c) 2013 Adam Wilsby Wahlberg. All rights reserved.
//

#import "LocationViewController.h"

@interface Location()

@property (nonatomic, readwrite, copy) NSString *title;

@end

@implementation Location

-(CLLocationCoordinate2D)coordinate
{
    return CLLocationCoordinate2DMake(self.latitude, self.longitude);
}

-(void)setName:(NSString *)name
{
    if ([_name isEqualToString:name]) return;
    
    _name = name;
    self.title = name;
}

@end

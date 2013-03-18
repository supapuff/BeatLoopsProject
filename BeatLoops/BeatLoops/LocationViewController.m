//
//  LocationViewController.m
//  BeatLoops
//
//  Created by admin on 3/16/13.
//  Copyright (c) 2013 Adam Wilsby Wahlberg. All rights reserved.
//

#import "LocationViewController.h"


@interface LocationViewController ()

@end

@implementation LocationViewController
@synthesize mapView = _mapView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.mapView.delegate self];
    [self.mapView setShowsUserLocation:YES];
	// Do any additional setup after loading the view.
}

- (void) mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation
{
    CLLocationCoordinate2D loc = [userLocation coordinate];
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(loc, 500,500);
    [self.mapView setRegion:region animated:YES];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

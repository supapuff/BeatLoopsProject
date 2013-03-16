//
//  DetailViewController.h
//  BeatLoops
//
//  Created by admin on 3/14/13.
//  Copyright (c) 2013 Adam Wilsby Wahlberg. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

#pragma mark - Managing the detail item

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
        NSLog(@"City: %@, longitude: %f, latitude: %f", self.city.name, self.city.longitude, self.city.latitude);
}

- (void)mapViewDidFinishLoadingMap:(MKMapView *)mapView
{
    [self.mapView addAnnotation:self.city];
}

-(void)zoomToPinAnimated:(BOOL)animated
{
    MKCoordinateRegion region;
    region.center = self.city.coordinate;
    region.span = MKCoordinateSpanMake(0.1, 0.1);
    
    // update map's initial view
    
    [self.mapView setRegion:region animated:animated];
}

- (void)mapView:(MKMapView *)mapView didAddAnnotationViews:(NSArray *)views {
    [self zoomToPinAnimated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

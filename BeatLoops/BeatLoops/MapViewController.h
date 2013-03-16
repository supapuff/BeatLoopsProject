//
//  MapViewController.h
//  BeatLoops
//
//  Created by admin on 3/14/13.
//  Copyright (c) 2013 Adam Wilsby Wahlberg. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Location.h"

@interface MapViewController : UIViewController <MKMapViewDelegate> {

IBOutlet UIButton *city;
    
}

@property (nonatomic, retain) NSArray *city;
@property (weak, nonatomic) IBOutlet MKMapView *mapView;


//- (IBAction) *city;

@end

//
//  LocationViewController.h
//  BeatLoops
//
//  Created by admin on 3/16/13.
//  Copyright (c) 2013 Adam Wilsby Wahlberg. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>


@interface LocationViewController : UIViewController <MKMapViewDelegate>
@property (weak, nonatomic) IBOutlet MKMapView *mapView;

@end

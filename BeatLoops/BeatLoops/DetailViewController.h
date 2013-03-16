//
//  DetailViewController.h
//  BeatLoops
//
//  Created by admin on 3/14/13.
//  Copyright (c) 2013 Adam Wilsby Wahlberg. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Location.h"

@interface DetailViewController : UIViewController <MKMapViewDelegate>





@property (strong, nonatomic) UIWindow *window;
@property (nonatomic, strong) Location * city;
@property (weak, nonatomic) IBOutlet MKMapView *mapView;

@end

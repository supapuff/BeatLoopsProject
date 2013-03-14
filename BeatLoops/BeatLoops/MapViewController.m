//
//  DetailViewController.h
//  BeatLoops
//
//  Created by admin on 3/14/13.
//  Copyright (c) 2013 Adam Wilsby Wahlberg. All rights reserved.
//

#import "MViewController.h"

#import "DetailViewController.h"
#import "LocationViewController.h"

/*
 
 Stad					Latitude			Longitude
 ------------------------------------------------------------
 Halmstad               56.677414           12.857536
 
 */

@interface MViewController () {
    
}
@end

@implementation MViewController


    - (void)awakeFromNib
{
    [super awakeFromNib];
    
    Location * halmstad = [[City alloc] init];
    london.latitude = 56.677414;
    london.longitude = 12.857536;
    

}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    //return [self.cities count];
    // self.cities.count;
    // [[self cities] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    //Location * city = self.cities[indexPath.row];
   // cell.textLabel.text = city.name;
    //    [cell.textLabel setText:city.name];
    
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"showDetail"]) {
       // NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        
     //   City * city = self.cities[indexPath.row];
       // [[segue destinationViewController] setCity:city];
    }
}

@end

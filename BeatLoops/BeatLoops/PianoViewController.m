//
//  PianoViewController.m
//  BeatLoops
//
//  Created by admin on 3/4/13.
//  Copyright (c) 2013 Adam Wilsby Wahlberg. All rights reserved.
//

#import "PianoViewController.h"

@interface PianoViewController ()

@end


@implementation PianoViewController




- (IBAction)play {
    if(clicked == 0) {
        clicked = 1;
        NSURL *url = [NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/606.wav", [[NSBundle mainBundle] resourcePath]]];
        
        NSError *error;
        audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:&error];
    
        NSLog(@"audio Loaded");              
                       audioPlayer.numberOfLoops = -1;
                       
                       [audioPlayer play];
                       [start setTitle:@"Stop" forState:UIControlStateNormal];
                       } else {
                           [audioPlayer stop];
                           clicked = 0;
                           [start setTitle:@"Start" forState:UIControlStateNormal];
                       
                       
                       }
    }

- (IBAction)play1 {
    if(clicked == 0) {
        clicked = 1;
        NSURL *url = [NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/audio.mp3", [[NSBundle mainBundle] resourcePath]]];
        
        NSError *error;
        audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:&error];
        
        NSLog(@"audio Loaded");
        audioPlayer.numberOfLoops = -1;
        
        [audioPlayer play];
        [start setTitle:@"Stop" forState:UIControlStateNormal];
    } else {
        [audioPlayer stop];
        clicked = 0;
        [start setTitle:@"Start" forState:UIControlStateNormal];
        
        
    }
}



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
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)Play:(id)sender {
}
- (IBAction)play:(id)sender {
}
@end

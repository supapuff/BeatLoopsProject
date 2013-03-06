//
//  DrumsViewController.m
//  BeatLoops
//
//  Created by admin on 3/4/13.
//  Copyright (c) 2013 Adam Wilsby Wahlberg. All rights reserved.
//

#import "DrumsViewController.h"
#import <AVFoundation/AVFoundation.h>

@interface DrumsViewController ()

@end

@implementation DrumsViewController
@synthesize recButton, playButton;

- (IBAction)play {
    //if(clicked == 0) {
    //    clicked = 1;
    NSURL *url = [NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/606.wav", [[NSBundle mainBundle] resourcePath]]];
    
    NSError *error;
    audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:&error];
    
    NSLog(@"audio Loaded");
    audioPlayer.numberOfLoops = 0;
    
    [audioPlayer play];
    //[start setTitle:@"Stop" forState:UIControlStateNormal];
    //} else {
    //    [audioPlayer stop];
    //    clicked = 0;
    //    [start setTitle:@"Start" forState:UIControlStateNormal];
    
    
}
//}

- (IBAction)play1 {
    //if(clicked == 0) {
    //    clicked = 1;
    NSURL *url = [NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/606snar.wav", [[NSBundle mainBundle] resourcePath]]];
    
    NSError *error;
    audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:&error];
    
    NSLog(@"audio Loaded");
    audioPlayer.numberOfLoops = 0;
    
    [audioPlayer play];
    //        [start setTitle:@"Stop" forState:UIControlStateNormal];
    //    } else {
    //        [audioPlayer stop];
    //        clicked = 0;
    //        [start setTitle:@"Start" forState:UIControlStateNormal];
    
    
}
//}

- (IBAction)recordning{
    if(isNotRecording){
        isNotRecording = NO;
    [recButton setTitle:@"STOP" forState:UIControlStateNormal];
    playButton.hidden = YES;
    recStateLabel.text = @"Recording";
    
 //   temporaryRecFile = [NSURL fileURLWithPath:[NSTemporaryDirectory() stringByAppendingPathComponent:[NSString stringWithString:@"VoiceFile"]]];
        
    
 //   recorder = [[AVAudioRecorder alloc] initWithURL:[temporaryRecFile settings:nil error:nil];
                
                [recorder setDelegate:self];
                [recorder prepareToRecord];
                [recorder record];
                
                }else{
                    isNotRecording = YES;
                    [recButton setTitle:@"REC" forState:UIControlStateNormal];
                    playButton.hidden = NO;
                    recStateLabel.text = @"Not Recording";
                    [recorder stop];
                
                }
                
                
                
}

- (IBAction)playback{
    
    AVAudioPlayer *player = [[AVAudioPlayer alloc] initWithContentsOfURL:temporaryRecFile error:nil];
    player.volume = 1;
    [player play];
    
    
                             
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
    isNotRecording = YES;
    playButton.hidden = YES;
    recStateLabel.text =@"Not Recording";
    
    AVAudioSession *audioSession = [AVAudioSession sharedInstance];
    
    [audioSession setCategory:AVAudioSessionCategoryPlayAndRecord error:nil];
    
    [audioSession setActive:YES error:nil];
    
       
    
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}
                

- (void)didReceiveMemoryWarning
{
     
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end

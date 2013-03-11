//
//  DrumsViewController.h
//  BeatLoops
//
//  Created by admin on 3/4/13.
//  Copyright (c) 2013 Adam Wilsby Wahlberg. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import <CoreAudio/CoreAudioTypes.h>


int clicked;

@interface DrumsViewController : UIViewController <AVAudioRecorderDelegate> {
    
   
    AVAudioPlayer *audioPlayer;
    IBOutlet UIButton *start, *start1, *start2, *start3, *start4, *start5, *start6,
    *start7, *start8, *start9, *start10, *start11;
    IBOutlet UIButton *recButton;
    IBOutlet UIButton *playButton;
    IBOutlet UILabel *recStateLabel;
    
    BOOL isNotRecording;
    
    NSURL *temporaryRecFile;
    AVAudioRecorder *recorder;
}

@property(nonatomic, retain)IBOutlet UIButton *recButton;
@property(nonatomic, retain)IBOutlet UIButton *playButton;
@property (nonatomic, strong) AVAudioPlayer *player;
//@property(nonatomic, retain)IBOutlet UIButton *start;
//@property(nonatomic, retain)IBOutlet UIButton *start1;

- (void)someMethod:(id)sender;


- (IBAction)play;
- (IBAction)play1;
- (IBAction)play2;
- (IBAction)play3;
- (IBAction)play4;
- (IBAction)play5;
- (IBAction)play6;
- (IBAction)play7;
- (IBAction)play8;
- (IBAction)play9;
- (IBAction)play10;
- (IBAction)play11;
- (IBAction)recordning;
- (IBAction)playback;






@end

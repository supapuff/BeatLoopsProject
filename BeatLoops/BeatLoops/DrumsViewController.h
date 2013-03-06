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
    IBOutlet UIButton *start;
    IBOutlet UIButton *start1;
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

- (IBAction)play;
- (IBAction)play1;
- (IBAction)recordning;
- (IBAction)playback;






@end

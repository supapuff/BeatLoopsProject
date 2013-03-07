//
//  AudioViewController.h
//  BeatLoops
//
//  Created by admin on 3/6/13.
//  Copyright (c) 2013 Adam Wilsby Wahlberg. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

int clicked;

@interface AudioViewController : UIViewController
<AVAudioRecorderDelegate, AVAudioPlayerDelegate>
{
    AVAudioPlayer *audioPlayer;
   
}

@property (strong, nonatomic) AVAudioRecorder *audioRecorder;
@property (strong, nonatomic) AVAudioPlayer *audioPlayer;
@property (strong, nonatomic) IBOutlet UIButton *recordButton;
@property (strong, nonatomic) IBOutlet UIButton *playButton;
@property (strong, nonatomic) IBOutlet UIButton *stopButton;
- (IBAction)recordAudio:(id)sender;
- (IBAction)playAudio:(id)sender;
- (IBAction)stop:(id)sender;


@end

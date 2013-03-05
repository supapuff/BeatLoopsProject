//
//  PianoViewController.h
//  BeatLoops
//
//  Created by admin on 3/4/13.
//  Copyright (c) 2013 Adam Wilsby Wahlberg. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

int clicked;

@interface PianoViewController : UIViewController {
    AVAudioPlayer *audioPlayer;
    IBOutlet UIButton *start;
    IBOutlet UIButton *start1;
}

- (IBAction)play;
- (IBAction)play1;






@end

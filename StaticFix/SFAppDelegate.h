//
//  SFAppDelegate.h
//  StaticFix
//
//  Created by remmah on 7/22/12. Last modified: 2018-10-02
//  Copyright (c) 2012 remmah. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface SFAppDelegate : NSObject <NSApplicationDelegate>
{
    __weak IBOutlet NSMenu *statusMenu;
    NSStatusItem *theItem;
    NSSound *blankNoise;
    NSTimer *timer;
}

@property (assign) IBOutlet NSWindow *window;

- (IBAction)openSourceCodeURL:(id)sender;
- (void)playFile;
@end

//
//  SFAppDelegate.m
//  StaticFix
//
//  Created by remmah on 7/22/12. Last Modified: 2018-10-02
//  Copyright (c) 2012 remmah. All rights reserved.
//

#import "SFAppDelegate.h"

@implementation SFAppDelegate

@synthesize window = _window;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    
}

- (void)awakeFromNib
{
    // Create the NSStatusItem
    NSStatusBar *bar = [NSStatusBar systemStatusBar];
    theItem = [bar statusItemWithLength:NSVariableStatusItemLength];
    
    // Get image resources
    NSString *pathToIcon = [[NSBundle mainBundle] pathForResource:@"sfmenuicon" ofType:@"png"];
    NSImage *iconImage = [[NSImage alloc] initWithContentsOfFile:pathToIcon];
    NSString *pathToNegativeIcon = [[NSBundle mainBundle] pathForResource:@"sfmenuiconinvert" ofType:@"png"];
    NSImage *negativeIconImage = [[NSImage alloc] initWithContentsOfFile:pathToNegativeIcon];
    
    // Set images for NSStatusItem
    [theItem setImage:iconImage];
    [theItem setAlternateImage:negativeIconImage];
    [theItem setHighlightMode:YES];
    [theItem setMenu:statusMenu];
    
    // Start sound looping
    blankNoise = [NSSound soundNamed:@"silence"];
    
    timer = [NSTimer timerWithTimeInterval:0.1
                                  target:self
                                selector:@selector(playFile) 
                                userInfo:nil
                                 repeats:YES];
    [timer setTolerance:0.1];
    [[NSRunLoop currentRunLoop] addTimer:timer forMode:NSRunLoopCommonModes];
}

- (IBAction)openSourceCodeURL:(id)sender {
    [[NSWorkspace sharedWorkspace] openURL:[NSURL URLWithString:@"https://github.com/remmah/StaticFix"]];
}

- (void)playFile
{
    if (blankNoise.isPlaying) {
        return;
    }
    else {
        [blankNoise play];
    }
    
}

@end

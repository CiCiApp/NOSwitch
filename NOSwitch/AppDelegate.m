//
//  AppDelegate.m
//  testSwitch
//
//  Created by Yuriy Panfyorov on 17/05/14.
//  Copyright (c) 2014 Yuriy Panfyorov. All rights reserved.
//

#import "AppDelegate.h"

#import "NOSwitchButton.h"

@interface AppDelegate ()

@property (nonatomic, weak) IBOutlet NSButton *checkbox;

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    self.window.backgroundColor = [NSColor whiteColor];
    
    NSRect checkboxFrame = self.checkbox.frame;
    checkboxFrame.origin.y -= checkboxFrame.size.height;
    checkboxFrame.origin.y -= 16.;
    checkboxFrame.size.height *= 2.;
    
    NOSwitchButton *button = [[NOSwitchButton alloc] initWithFrame:checkboxFrame];
    [self.window.contentView addSubview:button];
}

@end

//
//  EditorAppDelegate.m
//  Editor
//
//  Created by Jelle Vandebeeck on 01/01/11.
//  Copyright 2011 10to1. All rights reserved.
//

#import "EditorAppDelegate.h"
#import "EditorViewController.h"

@implementation EditorAppDelegate

@synthesize window;
@synthesize viewController;


#pragma mark -
#pragma mark Application lifecycle

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    [self.window addSubview:viewController.view];
    [self.window makeKeyAndVisible];

    return YES;
}
@end

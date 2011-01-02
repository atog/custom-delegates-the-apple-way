//
//  EditorAppDelegate.h
//  Editor
//
//  Created by Jelle Vandebeeck on 01/01/11.
//  Copyright 2011 10to1. All rights reserved.
//

#import <UIKit/UIKit.h>

@class EditorViewController;

@interface EditorAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    EditorViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet EditorViewController *viewController;

@end


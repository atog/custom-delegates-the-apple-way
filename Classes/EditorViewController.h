//
//  EditorViewController.h
//  Editor
//
//  Created by Jelle Vandebeeck on 01/01/11.
//  Copyright 2011 10to1. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ConfigViewController.h"
#import "ConfigControllerDelegate.h"

@class OtherViewController;

@interface EditorViewController : UIViewController <UITextViewDelegate, ConfigControllerDelegate> {
	IBOutlet UITextView *textView;
	IBOutlet UILabel *label;
	
	ConfigViewController *configController;
}
- (IBAction)showConfiguration:(id)sender;
@end


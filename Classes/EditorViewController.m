//
//  EditorViewController.m
//  Editor
//
//  Created by Jelle Vandebeeck on 01/01/11.
//  Copyright 2011 10to1. All rights reserved.
//

#import "EditorViewController.h"

@implementation EditorViewController

#pragma mark -
#pragma mark View flow

- (void)viewDidLoad {
	textView.delegate = self;
	label.text = [NSString stringWithFormat:@"Total characters: %i", [textView.text length]];
	
	self.view.backgroundColor = [UIColor lightGrayColor];
}

#pragma mark -
#pragma mark Actions

- (IBAction)showConfiguration:(id)sender {
	// Set up other controller
	configController = [[ConfigViewController alloc] init];
	configController.delegate = self;
	configController.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
	[self presentModalViewController:configController animated:YES];
}

#pragma mark -
#pragma mark ConfigControllerDelegate methods

- (void)clearColor {
	self.view.backgroundColor = [UIColor lightGrayColor];
	[self dismissModalViewControllerAnimated:YES];
}

- (void)changeColor:(UIColor *)newColor {
	self.view.backgroundColor = newColor;
	[self dismissModalViewControllerAnimated:YES];
}

#pragma mark -
#pragma mark UITextView delegate methods

- (void)textViewDidChange:(UITextView *)myTextView {
	label.text = [NSString stringWithFormat:@"Total characters: %i", [textView.text length]];
}

@end

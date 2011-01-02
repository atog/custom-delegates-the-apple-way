    //
//  custom-delegates-the-apple-way.m
//  Editor
//
//  Created by Jelle Vandebeeck on 02/01/11.
//  Copyright 2011 10to1. All rights reserved.
//

#import "ConfigViewController.h"

#define CLEAR_TAG  001
#define BLACK_TAG  002
#define YELLOW_TAG 003
#define RED_TAG    004

@implementation ConfigViewController

@synthesize delegate;

#pragma mark -
#pragma mark View flow

- (void)viewDidLoad {
	self.view.backgroundColor = [UIColor grayColor];
	
	// Set the clear button
	UIButton *clearButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	clearButton.frame = CGRectMake(20, 20, 280, 37);
	clearButton.tag = CLEAR_TAG;
	[clearButton addTarget:self action:@selector(setColor:) forControlEvents:UIControlEventTouchDown];
	[clearButton setTitle:@"Clear color" forState:UIControlStateNormal];
	[self.view addSubview:clearButton];
	
	// Set the black button
	UIButton *blackButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	blackButton.frame = CGRectMake(20, 77, 280, 37);
	blackButton.tag = BLACK_TAG;
	[blackButton addTarget:self action:@selector(setColor:) forControlEvents:UIControlEventTouchDown];
	[blackButton setTitle:@"Black color" forState:UIControlStateNormal];
	[self.view addSubview:blackButton];
	
	// Set the yellow button
	UIButton *yellowButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	yellowButton.frame = CGRectMake(20, 134, 280, 37);
	yellowButton.tag = YELLOW_TAG;
	[yellowButton addTarget:self action:@selector(setColor:) forControlEvents:UIControlEventTouchDown];
	[yellowButton setTitle:@"Yellow color" forState:UIControlStateNormal];
	[self.view addSubview:yellowButton];
	
	// Set the red button
	UIButton *redButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	redButton.frame = CGRectMake(20, 191, 280, 37);
	redButton.tag = RED_TAG;
	[redButton addTarget:self action:@selector(setColor:) forControlEvents:UIControlEventTouchDown];
	[redButton setTitle:@"RED color" forState:UIControlStateNormal];
	[self.view addSubview:redButton];
}

#pragma mark -
#pragma mark EditorControllerDelegate delegate methods

- (void)setColor:(id)sender {
	if (((UIButton *)sender).tag == CLEAR_TAG) {
		// No check on selector, because selector clearColor is @required
		[((NSObject *)self.delegate) performSelector:@selector(clearColor)];
	} else if ([((NSObject *)self.delegate) respondsToSelector:@selector(changeColor:)]) {
		switch (((UIButton *)sender).tag) {
			case BLACK_TAG:
				[((NSObject *)self.delegate) performSelector:@selector(changeColor:) withObject:[UIColor blackColor]];
				break;
			case RED_TAG:
				[((NSObject *)self.delegate) performSelector:@selector(changeColor:) withObject:[UIColor redColor]];
				break;
			case YELLOW_TAG:
				[((NSObject *)self.delegate) performSelector:@selector(changeColor:) withObject:[UIColor yellowColor]];
				break;
			default:
				break;
		}
	}
}

@end

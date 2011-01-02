//
//  ConfigControllerDelegate.h
//  Editor
//
//  Created by Jelle Vandebeeck on 02/01/11.
//  Copyright 2011 10to1. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ConfigControllerDelegate
@required
- (void)clearColor;
@optional
- (void)changeColor:(UIColor *)newColor;
@end
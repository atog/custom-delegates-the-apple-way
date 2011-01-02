//
//  ConfigViewController.h
//  Editor
//
//  Created by Jelle Vandebeeck on 02/01/11.
//  Copyright 2011 10to1. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ConfigControllerDelegate.h"

@interface ConfigViewController : UIViewController
@property (nonatomic, retain) NSObject<ConfigControllerDelegate> *delegate;
@end

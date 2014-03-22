//
//  JLAppDelegate.h
//  JLWeico
//
//  Created by Jack Liu on 14-3-21.
//  Copyright (c) 2014年 Jack Liu. All rights reserved.
//

#import <UIKit/UIKit.h>
@class JASidePanelController;

@interface JLAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) JASidePanelController *viewController;

@end

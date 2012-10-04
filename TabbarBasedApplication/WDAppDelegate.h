//
//  WDAppDelegate.h
//  TabbarBasedApplication
//
//  Created by Nguyen Anh Tuan on 10/3/12.
//  Copyright (c) 2012 ICCOM. All rights reserved.
//

#import <UIKit/UIKit.h>
@class WDViewController;
@interface WDAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) WDViewController *viewController;
@end

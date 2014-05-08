//
//  moodPickerAppDelegate.h
//  moodPicker
//
//  Created by user  on 3/9/14.
//  Copyright 2014 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class moodPickerViewController;

@interface moodPickerAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    moodPickerViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet moodPickerViewController *viewController;

@end


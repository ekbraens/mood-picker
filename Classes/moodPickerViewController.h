//
//  moodPickerViewController.h
//  moodPicker
//
//  Created by user  on 3/9/14.
//  Copyright 2014 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface moodPickerViewController : UIViewController 
<UIPickerViewDataSource, UIPickerViewDelegate>
{
	NSArray * moods;
	IBOutlet UIPickerView * myPicker;
}
@property(nonatomic, retain) IBOutlet UIPickerView * myPicker;

@end


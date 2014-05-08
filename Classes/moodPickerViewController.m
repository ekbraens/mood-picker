//
//  moodPickerViewController.m
//  moodPicker
//
//  Created by user  on 3/9/14.
//  Copyright 2014 __MyCompanyName__. All rights reserved.
//

#import "moodPickerViewController.h"

@implementation moodPickerViewController
@synthesize myPicker;

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
	return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
	return moods.count;
}


- (NSString *)pickerView:(UIPickerView *)pickerView 
			 titleForRow:(NSInteger)row 
			forComponent:(NSInteger)component
{
	return [moods objectAtIndex:row];
}
- (void)pickerView:(UIPickerView *)pickerView 
	  didSelectRow:(NSInteger)row 
	   inComponent:(NSInteger)component
{
	UIColor *newColor;
	switch (row) {
		case 0: case 1: case 2:
			newColor = [UIColor yellowColor];
			break;
		case 3: case 4: case 5:
			newColor = [UIColor grayColor];
			break;
		case 6: case 7: case 8:
			newColor = UIColor.redColor;
			break;
		default:
			newColor = UIColor.whiteColor;
			break;
	}
	
	self.view.backgroundColor = newColor;
}


/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad 
{
	moods = [[NSArray alloc] initWithObjects:@"Estactic",
							@"Happy", @"Cheerful", @"Fine",
							@"Tired", @"Maudlin", @"Depressed",
							@"Overwhelmed", nil];

    [super viewDidLoad];
}


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end

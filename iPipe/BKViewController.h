//
//  BKViewController.h
//  iPipe
//
//  Created by Brian Keating on 27/10/2012.
//  Copyright (c) 2012 Brian Keating. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BKViewController : UIViewController<UITextFieldDelegate>

@property (strong, nonatomic) IBOutlet UITextField *distance;
@property (strong, nonatomic) IBOutlet UITextField *height;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segDirection;
@property (strong, nonatomic) IBOutlet UIImageView *mainImageView;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segDistUnit;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segHeightUnit;

// Now the output outlets
//@property (strong, nonatomic) IBOutlet UILabel *outD;
//@property (strong, nonatomic) IBOutlet UILabel *outH;
@property (strong, nonatomic) IBOutlet UILabel *outA;
@property (strong, nonatomic) IBOutlet UILabel *outS;
@property (strong, nonatomic) IBOutlet UILabel *outL;
@property (strong, nonatomic) IBOutlet UIButton *materialsButton;

- (IBAction)DirectionChanged:(id)sender;
- (IBAction)TextFieldEditingDidEnd:(id)sender;
- (IBAction)UnitChanged:(id)sender;

-(double) getLenght;

@end

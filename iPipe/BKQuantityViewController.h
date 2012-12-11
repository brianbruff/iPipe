//
//  BKQuantityViewController.h
//  iPipe
//
//  Created by Brian Keating on 06/12/2012.
//  Copyright (c) 2012 Brian Keating. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BKQuantityViewController : UIViewController
- (IBAction)OnBackClicked:(id)sender;

@property (strong, nonatomic) IBOutlet UITextField *txtWidth;
@property (strong, nonatomic) IBOutlet UITextField *txtHeight;
@property (strong, nonatomic) IBOutlet UITextField *txtDensityFactor;
@property (strong, nonatomic) IBOutlet UILabel *lblMetricTonne;
@property (strong, nonatomic) IBOutlet UILabel *lbLength;
- (IBAction)txtChanged:(id)sender;
@end

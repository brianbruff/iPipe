//
//  BKQuantityViewController.m
//  iPipe
//
//  Created by Brian Keating on 06/12/2012.
//  Copyright (c) 2012 Brian Keating. All rights reserved.
//

#import "BKQuantityViewController.h"
#import "BKViewController.h"


@interface BKQuantityViewController ()

@end

@implementation BKQuantityViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    BKViewController* parent = (BKViewController*)self.presentingViewController;
    double length = [parent getLenght];
    self.lbLength.text = [NSString stringWithFormat:@"%.2f", length];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.txtDensityFactor resignFirstResponder];
    [self.txtHeight resignFirstResponder];
    [self.txtWidth resignFirstResponder];
}

- (IBAction)OnBackClicked:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (IBAction)txtChanged:(id)sender {
    
    // Volumn calculation
    double width = [self.txtWidth.text doubleValue] / 100;
    double height = [self.txtHeight.text doubleValue] / 100;
    
    double lenght = [self.lbLength.text doubleValue];
    
    double volumn = width * height * lenght;
    double weight = volumn * [self.txtDensityFactor.text doubleValue];
    
    self.lblMetricTonne.text = [NSString stringWithFormat:@"%.2f", weight];
    
}
@end

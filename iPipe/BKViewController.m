//
//  BKViewController.m
//  iPipe
//
//  Created by Brian Keating on 27/10/2012.
//  Copyright (c) 2012 Brian Keating. All rights reserved.
//

#import "BKViewController.h"

@interface BKViewController ()

@end

@implementation BKViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    UIColor *background = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"iPipeBackgroung.png"]];
    self.view.backgroundColor = background;
    //[self.materialsButton setImage:[UIImage imageNamed:@"DumperButton.png"] forState:UIControlStateNormal];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL) textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}


-(BOOL) textFieldShouldEndEditing:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.distance resignFirstResponder];
    [self.height resignFirstResponder];
}

- (IBAction)DirectionChanged:(id)sender {
    UIImage *image = nil;
    UISegmentedControl *seg = sender;
    if (seg.selectedSegmentIndex == 1){
        image = [UIImage imageNamed:@"triangle.png"];
    } else {
        image = [UIImage imageNamed:@"triangleInverted.png"];
    }
    
    [self.mainImageView setImage:image];

    [self calculateAndDisplay];
}

- (IBAction)TextFieldEditingDidEnd:(id)sender {
    
    [self calculateAndDisplay];
}

- (IBAction)UnitChanged:(id)sender {
    [self calculateAndDisplay];
}

-(void) setOutputsDefaults{
   // self.outD.text = @"";
   // self.outH.text = @"";
    self.outS.text = @"";
    self.outL.text = @"";
    self.outA.text = @"";
}

-(void) calculateAndDisplay{
    
    if ([self.distance.text compare:@""] == NSOrderedSame || [self.height.text compare:@""] == NSOrderedSame){
        [self setOutputsDefaults];
        return;
    }
    
    int height = [self.height.text intValue];
    int distance = [self.distance.text intValue];
    
    if (height * distance == 0){
        [self setOutputsDefaults];
        return;
    }
    
    
    double dHeight = height * [self getScaleFactor:self.segHeightUnit];
    if (self.segDirection.selectedSegmentIndex == 1){
        dHeight = dHeight * -1;
        
    }
    double dDistance = distance * [self getScaleFactor:self.segDistUnit];

   // self.outD.text = [NSString stringWithFormat:@"%.5f",dDistance / 1000];;
    //self.outH.text = [NSString stringWithFormat:@"%.5f",dHeight / 1000];;;
    
    // slope is height / distance
    self.outS.text = [NSString stringWithFormat:@"%.5f",dHeight / dDistance * 100];
    
    // pythagorus
    self.outL.text = [NSString stringWithFormat:@"%.4f",sqrt(dHeight * dHeight + dDistance * dDistance)/1000];
    
    // atan of angle
    float angle = ABS(atan2f(dHeight, dDistance)/M_PI*180);
    
    self.outA.text = [NSString stringWithFormat:@"%.2f", angle];
    
}


-(double) getScaleFactor: (UISegmentedControl*) segCtrl{
    int index = [segCtrl selectedSegmentIndex];
    NSString* title = [segCtrl titleForSegmentAtIndex:index];
    
    int factor = 1;
    
    if ([title compare:@"cm"] == NSOrderedSame)
        factor = 10;
    else if ([title compare:@"m"] == NSOrderedSame)
        factor = 1000;
    
    return factor;
}

@end

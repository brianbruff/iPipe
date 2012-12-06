//
//  BKQuantityViewController.m
//  iPipe
//
//  Created by Brian Keating on 06/12/2012.
//  Copyright (c) 2012 Brian Keating. All rights reserved.
//

#import "BKQuantityViewController.h"

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)OnBackClicked:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end

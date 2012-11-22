//
//  main.m
//  iPipe
//
//  Created by Brian Keating on 27/10/2012.
//  Copyright (c) 2012 Brian Keating. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "BKAppDelegate.h"

int main(int argc, char *argv[])
{
    @try
    {
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([BKAppDelegate class]));
    }
    } @catch (NSException* exception){
        NSLog(@"%@",[[exception name] stringByAppendingString:[exception reason]]);
    }
}

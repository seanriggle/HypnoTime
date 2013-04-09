//
//  TimeViewController.m
//  HypnoTime
//
//  Created by Sean Riggle on 4/1/13.
//  Copyright (c) 2013 Sean Riggle. All rights reserved.
//

#import "TimeViewController.h"

@implementation TimeViewController
-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    //self = [super initWithNibName:nil bundle:nil];
    
    NSBundle *appBundle = [NSBundle mainBundle];
    
    self = [super initWithNibName:@"TimeViewController" bundle:appBundle];
    
    if(self)
    {
        UITabBarItem *tbi = [self tabBarItem];
        
        [tbi setTitle:@"Time"];
        
        //TO DO: Add the tab icon here
        
        //[[self view] setBackgroundColor:[UIColor greenColor]];
    }
    
    return self;
}


-(void)showCurrentTime:(id)sender
{
    NSDate *now = [NSDate date];
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    
    [formatter setTimeStyle:NSDateFormatterMediumStyle];
    
    [timeLabel setText:[formatter stringFromDate:now]];
}

-(void)viewDidLoad
{
    [super viewDidLoad];
    
    [[self view] setBackgroundColor:[UIColor greenColor]];
    
    NSLog(@"TimeViewController loaded its view.");
}

-(void)viewWillAppear:(BOOL)animated
{
    NSLog(@"CurrentTimeViewController will appear");
    [super viewWillAppear:animated];
    [self showCurrentTime:nil];
}

-(void)viewWillDisappear:(BOOL)animated
{
    NSLog(@"CurrentTimeViewController with disapper");
    [super viewWillDisappear:animated];
}


//TO DO: Is this method depricated with iOS 6.0?
/*
-(void)viewDidUnload
{
    [super viewDidUnload];
    
    //NSLog(@"Unloading TimeController's subviews");
    //timeLabel = nil;
    
    NSLog(@"timeLabel = %@", timeLabel);
}
 */

@end

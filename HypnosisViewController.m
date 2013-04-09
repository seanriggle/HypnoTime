//
//  HypnosisViewController.m
//  HypnoTime
//
//  Created by Sean Riggle on 4/1/13.
//  Copyright (c) 2013 Sean Riggle. All rights reserved.
//

#import "HypnosisViewController.h"
#import "HypnosisView.h"

@implementation HypnosisViewController

-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nil bundle:nil];
    
    if(self)
    {
        UITabBarItem *tbi = [self tabBarItem];
        
        [tbi setTitle:@"Hypnosis"];
        
        //TO DO: Add the tab icon here
    }
    
    return self;
}

-(void)loadView
{
    CGRect frame = [[UIScreen mainScreen] bounds];
    HypnosisView *v = [[HypnosisView alloc] initWithFrame:frame];
    
    [self setView:v];
}

-(void)viewDidLoad
{
    [super viewDidLoad];
    
    NSLog(@"HyposisViewController loaded its view.");
}

@end

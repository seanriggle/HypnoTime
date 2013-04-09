//
//  TimeViewController.h
//  HypnoTime
//
//  Created by Sean Riggle on 4/1/13.
//  Copyright (c) 2013 Sean Riggle. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TimeViewController : UIViewController
{
    __weak IBOutlet UILabel *timeLabel;
}

-(IBAction)showCurrentTime:(id)sender;

@end

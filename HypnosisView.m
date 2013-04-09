//
//  HypnosisView.m
//  Hypnosister
//
//  Created by Sean Riggle on 4/1/13.
//  Copyright (c) 2013 Sean Riggle. All rights reserved.
//

#import "HypnosisView.h"

@implementation HypnosisView
@synthesize circleColor;

-(void)setCircleColor:(UIColor *)clr
{
    circleColor = clr;
    [self setNeedsDisplay];
}

-(void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
   if(motion == UIEventSubtypeMotionShake)
   {
       NSLog(@"Device started shaking!");
       [self setCircleColor:[UIColor redColor]];
   }
}

-(BOOL)canBecomeFirstResponder
{
    return YES;
}

-(id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if(self)
    {
        [self setBackgroundColor:[UIColor clearColor]];
        
        [self setCircleColor:[UIColor lightGrayColor]];
    }
    
    return self;
}

-(void)drawRect:(CGRect)dirtyRect
{
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    CGRect bounds = [self bounds];
    
    CGPoint center;
    center.x = bounds.origin.x + bounds.size.width / 2.0;
    center.y = bounds.origin.y + bounds.size.height / 2.0;
    
    //float maxRadius = hypot(bounds.size.width, bounds.size.height) / 4.0;
    
    float maxRadius = hypot(bounds.size.width, bounds.size.height) / 2.0;
    
    CGContextSetLineWidth(ctx, 10);
    
    //[[UIColor colorWithRed:0.6 green:0.6 blue:0.6 alpha:1] setStroke];
    
    [[self circleColor] setStroke];
    
    //CGContextSetRGBStrokeColor(ctx, 0.6, 0.6, 0.6, 1.0);
    
    //CGContextAddArc(ctx, center.x, center.y, maxRadius, 0.0, M_PI * 2.0, YES);
    
    //CGContextStrokePath(ctx);
    
    for(float currentRadius = maxRadius; currentRadius > 0; currentRadius -=20)
    {
        CGContextAddArc(ctx, center.x, center.y, currentRadius, 0.0, M_PI * 2.0, YES);
        CGContextStrokePath(ctx);
    }
    
    NSString *text = @"You are getting sleepy...";
    
    UIFont *font = [UIFont boldSystemFontOfSize:28];
    
    CGRect textRect;
    textRect.size = [text sizeWithFont:font];
    
    textRect.origin.x = center.x - textRect.size.width / 2.0;
    textRect.origin.y = center.y - textRect.size.height / 2.0;
    
    [[UIColor blackColor] setFill];
    
    CGSize offset = CGSizeMake(4, 3);
    CGColorRef color = [[UIColor darkGrayColor] CGColor];
    CGContextSetShadowWithColor(ctx, offset, 2.0, color);
    
    [text drawInRect:textRect withFont:font];
    
    
    
}

@end

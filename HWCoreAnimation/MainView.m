//
//  MainView.m
//  HWCoreAnimation
//
//  Created by Gena on 28.05.15.
//  Copyright (c) 2015 Gena. All rights reserved.
//

#import "MainView.h"
#import "DashedLine.h"

@implementation MainView

- (void)drawRect:(CGRect)rect {
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGPoint startPoint = CGPointMake(50.0, 100.0);
    CGPoint endPoint = CGPointMake(250.0, 100.0);
    DashedLine *line = [[DashedLine alloc] initWithStartPoint:startPoint endPoint:endPoint];
    [line drawInContext:context];
}


@end

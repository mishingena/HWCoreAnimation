//
//  DashedLine.m
//  HWCoreAnimation
//
//  Created by Gena on 28.05.15.
//  Copyright (c) 2015 Gena. All rights reserved.
//

#import "DashedLine.h"

@interface DashedLine ()

@end

@implementation DashedLine

- (id)init {
    self = [super init];
    if (self) {
        _startPoint = CGPointMake(0.0, 0.0);
        _endPoint = CGPointMake(0.0, 0.0);
        _strokeWidth = 1.0;
        _lineColor = [UIColor blackColor];
    }
    return self;
}

- (instancetype)initWithStartPoint:(CGPoint)startPoint
                          endPoint:(CGPoint)endPoint {
    self = [super init];
    if (self) {
        _strokeWidth = 1.0;
        _lineColor = [UIColor blackColor];
        _startPoint = startPoint;
        _endPoint = endPoint;
    }
    return self;
}

- (CGPoint)centerPoint {
    CGFloat x = (self.endPoint.x - self.startPoint.x) / 2 + self.startPoint.x;
    CGFloat y = (self.endPoint.y - self.startPoint.y) / 2 + self.startPoint.y;
    return CGPointMake(x, y);
}

- (void)drawInContext:(CGContextRef)context {
    CGContextSetLineWidth(context, self.strokeWidth);
    CGContextSetStrokeColorWithColor(context, self.lineColor.CGColor);
    CGContextMoveToPoint(context, self.startPoint.x, self.startPoint.y);
    CGFloat lengths[] = {self.strokeWidth * 3, self.strokeWidth * 3};
    CGContextSetLineDash(context, 0.0, lengths, 2);
    CGContextAddLineToPoint(context, self.endPoint.x, self.endPoint.y);
    CGContextStrokePath(context);
}



@end

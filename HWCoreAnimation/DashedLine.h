//
//  DashedLine.h
//  HWCoreAnimation
//
//  Created by Gena on 28.05.15.
//  Copyright (c) 2015 Gena. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DashedLine : NSObject

@property (nonatomic, readonly) CGPoint startPoint;
@property (nonatomic, readonly) CGPoint endPoint;
@property (nonatomic) CGPoint centerPoint;
@property (nonatomic) UIColor *lineColor;
@property (nonatomic, assign) CGFloat strokeWidth;

- (instancetype)initWithStartPoint:(CGPoint)startPoint
                          endPoint:(CGPoint)endPoint;

- (void)drawInContext:(CGContextRef)context;

@end

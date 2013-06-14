//
//  CERangeSlider.h
//  CERangeSlider
//
//  Created by Snowmanzzz on 13-6-3.
//  Copyright (c) 2013年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CERangeSlider : UIControl

@property (nonatomic) float maximumValue;

@property (nonatomic) float minimumValue;

@property (nonatomic) float upperValue;

@property (nonatomic) float lowerValue;


@property (nonatomic) UIColor* trackColour;
@property (nonatomic) UIColor* trackHighlightColour;
@property (nonatomic) UIColor* knobColour;
@property (nonatomic) float curvaceousness;

- (float) positionForValue:(float)value;

@end
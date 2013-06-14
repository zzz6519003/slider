//
//  CERangeSliderKnobLayer.h
//  CERangeSlider
//
//  Created by Snowmanzzz on 13-6-8.
//  Copyright (c) 2013年 apple. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
#import "CERangeSliderKnobLayer.h"

@class CERangeSlider;

@interface CERangeSliderKnobLayer : CALayer

@property BOOL highlighted;
@property (weak) CERangeSlider *slider;
@end

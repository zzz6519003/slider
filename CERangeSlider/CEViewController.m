//
//  CEViewController.m
//  CERangeSlider
//
//  Created by Snowmanzzz on 13-6-3.
//  Copyright (c) 2013年 apple. All rights reserved.
//

#import "CEViewController.h"
#import "CERangeSlider.h"

@interface CEViewController () {
    CERangeSlider *_rangeSlider;
}

@end

@implementation CEViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSUInteger margin = 30;
    CGRect sliderFrame = CGRectMake(margin, margin, self.view.frame.size.width - margin * 2, 30);
    _rangeSlider = [[CERangeSlider alloc] initWithFrame:sliderFrame];
//    _rangeSlider.backgroundColor = [UIColor redColor];

    [_rangeSlider addTarget:self action:@selector(slideValueChanged:) forControlEvents:UIControlEventValueChanged];
    
    [self.view addSubview:_rangeSlider];
    
    for (int i = 0; i < 20; i++) {
        [self performSelector:@selector(updateState) withObject:nil afterDelay:i * 1.0f];
    }
}

- (void)updateState
{
    _rangeSlider.trackHighlightColour = [UIColor purpleColor];
    _rangeSlider.curvaceousness -= 0.1;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)slideValueChanged:(id)control {
    NSLog(@"Slider value changed: (%.2f, %.2f)", _rangeSlider.lowerValue, _rangeSlider.upperValue);
}

@end

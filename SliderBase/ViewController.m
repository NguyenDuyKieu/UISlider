//
//  ViewController.m
//  SliderBase
//
//  Created by Nguyễn Duy Kiều on 9/13/15.
//  Copyright (c) 2015 Nguyen Duy Kieu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSTimer* _timer;
    __weak IBOutlet UISlider *slider;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _timer = [NSTimer scheduledTimerWithTimeInterval:0.1
                                              target:self
                                            selector: @selector(onTimer)
                                            userInfo:nil
                                             repeats:true];
    //slider.transform = CGAffineTransformMakeRotation(M_PI_2);
    slider.tintColor = [UIColor redColor];
    slider.thumbTintColor = [UIColor yellowColor];
}

- (void)onTimer{
    slider.value +=0.05;
    if (slider.value >= 1.0) {
        slider.value =1.0;
        [_timer invalidate ];
    }
}
@end

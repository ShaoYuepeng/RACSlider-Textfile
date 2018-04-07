//
//  ViewController.m
//  RACSlider&Textfile
//
//  Created by 邵岳鹏 on 2018/4/7.
//  Copyright © 2018年 邵岳鹏. All rights reserved.
//

#import "ViewController.h"
#import <ReactiveCocoa.h>

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    _redInput.text = _greenInput.text = _blueInput.text = @"0.5";
    [self blindSlider:_redSlider textField:_redInput];
    [self blindSlider:_blueSlider textField:_blueInput];
    [self blindSlider:_greenSlider textField:_greenInput];

}


- (void)blindSlider:(UISlider *)slider textField:(UITextField *)textField
{
    RACChannelTerminal *signalSlider = [slider rac_newValueChannelWithNilValue:nil];
    RACChannelTerminal *signalText = [textField rac_newTextChannel];
    [signalText subscribe:signalSlider];
    [[signalSlider map:^id(id value) {
        return [NSString stringWithFormat:@"%.02f",[value floatValue]];
    }] subscribe:signalText];
    
    
    
}













- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}


@end

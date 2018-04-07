//
//  ViewController.h
//  RACSlider&Textfile
//
//  Created by 邵岳鹏 on 2018/4/7.
//  Copyright © 2018年 邵岳鹏. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UISlider *redSlider;
@property (weak, nonatomic) IBOutlet UISlider *greenSlider;
@property (weak, nonatomic) IBOutlet UISlider *blueSlider;
@property (weak, nonatomic) IBOutlet UITextField *redInput;
@property (weak, nonatomic) IBOutlet UITextField *blueInput;
@property (weak, nonatomic) IBOutlet UITextField *greenInput;

@property (weak, nonatomic) IBOutlet UIView *showView;


@end


//
//  ViewController.h
//  SDCalсulator
//
//  Created by Дмитрий Солоп on 05.05.16.
//  Copyright © 2016 Дмитрий Солоп. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *viewLaybleOutlet;


- (IBAction)buttonPercents:(UIButton *)sender;
- (IBAction)button_C:(UIButton *)sender;
- (IBAction)button_0:(UIButton *)sender;
- (IBAction)button_1:(UIButton *)sender;
- (IBAction)button_2:(UIButton *)sender;
- (IBAction)button_3:(UIButton *)sender;
- (IBAction)button_4:(UIButton *)sender;
- (IBAction)button_5:(UIButton *)sender;
- (IBAction)button_6:(UIButton *)sender;
- (IBAction)button_7:(UIButton *)sender;
- (IBAction)button_8:(UIButton *)sender;
- (IBAction)button_9:(UIButton *)sender;
- (IBAction)buttonDelenie:(UIButton *)sender;
- (IBAction)buttonProizvedenie:(UIButton *)sender;
- (IBAction)buttonRaznica:(UIButton *)sender;
- (IBAction)buttonSlozhenie:(UIButton *)sender;
- (IBAction)buttonDot:(UIButton *)sender;
- (IBAction)buttonEqually:(UIButton *)sender;


@property (nonatomic, strong) NSMutableString *showFormula;

@property (nonatomic, assign) NSInteger result;
@property (nonatomic, assign) NSInteger firstValue;
@property (nonatomic, assign) NSInteger secondValue;
@property (nonatomic, assign) NSInteger operation;
@property (nonatomic, assign) char* vvod;
@property (nonatomic, assign) char sign;
@property (nonatomic, assign) double* d1;
@property (nonatomic, assign) double* d2;


@end


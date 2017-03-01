//
//  ViewController.m
//  SDCalсulator
//
//  Created by Дмитрий Солоп on 05.05.16.
//  Copyright © 2016 Дмитрий Солоп. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self deystvie];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)buttonPercents:(UIButton *)sender {
    NSLog(@"I push the button - percents!");
    self.viewLaybleOutlet.text = [NSString stringWithFormat:@"%@%@", self.viewLaybleOutlet.text, @"%"];
}

- (IBAction)button_C:(UIButton *)sender {
    NSLog(@"I push the button - C");
    self.viewLaybleOutlet.text = [NSString stringWithFormat:@""];
}

- (IBAction)button_0:(UIButton *)sender {
    NSLog(@"I push the button - 0");
    self.viewLaybleOutlet.text = [NSString stringWithFormat:@"%@%@", self.viewLaybleOutlet.text, @"0"];
}

- (IBAction)button_1:(UIButton *)sender {
    NSLog(@"I push the button - 1");
    self.viewLaybleOutlet.text = [NSString stringWithFormat:@"%@%@", self.viewLaybleOutlet.text, @"1"];
}

- (IBAction)button_2:(UIButton *)sender {
    NSLog(@"I push the button - 2");
    self.viewLaybleOutlet.text = [NSString stringWithFormat:@"%@%@", self.viewLaybleOutlet.text, @"2"];
}

- (IBAction)button_3:(UIButton *)sender {
    NSLog(@"I pus the button - 3");
    self.viewLaybleOutlet.text = [NSString stringWithFormat:@"%@%@", self.viewLaybleOutlet.text, @"3"];
}

- (IBAction)button_4:(UIButton *)sender {
    NSLog(@"I pus the button - 4");
    self.viewLaybleOutlet.text = [NSString stringWithFormat:@"%@%@", self.viewLaybleOutlet.text, @"4"];
}

- (IBAction)button_5:(UIButton *)sender {
    NSLog(@"I pus the button - 5");
    self.viewLaybleOutlet.text = [NSString stringWithFormat:@"%@%@", self.viewLaybleOutlet.text, @"5"];
}

- (IBAction)button_6:(UIButton *)sender {
    NSLog(@"I pus the button - 6");
    self.viewLaybleOutlet.text = [NSString stringWithFormat:@"%@%@", self.viewLaybleOutlet.text, @"6"];
}

- (IBAction)button_7:(UIButton *)sender {
    NSLog(@"I pus the button - 7");
    self.viewLaybleOutlet.text = [NSString stringWithFormat:@"%@%@", self.viewLaybleOutlet.text, @"7"];
}

- (IBAction)button_8:(UIButton *)sender {
    NSLog(@"I pus the button - 8");
    self.viewLaybleOutlet.text = [NSString stringWithFormat:@"%@%@", self.viewLaybleOutlet.text, @"8"];
}

- (IBAction)button_9:(UIButton *)sender {
    NSLog(@"I pus the button - 9");
    self.viewLaybleOutlet.text = [NSString stringWithFormat:@"%@%@", self.viewLaybleOutlet.text, @"9"];
}

- (IBAction)buttonDelenie:(UIButton *)sender {
    NSLog(@"I pus the button - buttonDelenie");
    self.viewLaybleOutlet.text = [NSString stringWithFormat:@"%@%@", self.viewLaybleOutlet.text, @"/"];
}

- (IBAction)buttonProizvedenie:(UIButton *)sender {
    NSLog(@"I pus the button - buttonProizvedenie");
    self.viewLaybleOutlet.text = [NSString stringWithFormat:@"%@%@", self.viewLaybleOutlet.text, @"*"];
}

- (IBAction)buttonRaznica:(UIButton *)sender {
    NSLog(@"I pus the button - buttonRaznica");
    self.viewLaybleOutlet.text = [NSString stringWithFormat:@"%@%@", self.viewLaybleOutlet.text, @"-"];
}

- (IBAction)buttonSlozhenie:(UIButton *)sender {
    NSLog(@"I pus the button - buttonSlozhenie");
    self.viewLaybleOutlet.text = [NSString stringWithFormat:@"%@%@", self.viewLaybleOutlet.text, @"+"];
}

- (IBAction)buttonDot:(UIButton *)sender {
    NSLog(@"I pus the button - buttonDot");
    self.viewLaybleOutlet.text = [NSString stringWithFormat:@"%@%@", self.viewLaybleOutlet.text, @"."];
}

- (IBAction)buttonEqually:(UIButton *)sender {
     NSLog(@"I pus the button - buttonEqually");
/*
    char *vvod = (char) self.viewLaybleOutlet.text;
    char *sign;
    char *ptrEnd1, *ptrEnd2;
    double d1 = strtod (vvod, &ptrEnd1);
    strncpy(sign, ptrEnd1, 1);
    double d2 = strtod (ptrEnd1, NULL);
 
    NSLog(@"first digit = %lf \nsecond digit = %lf \nsign = %s", d1, d2, sign);
 
    const char *vvod = (const char)self.viewLaybleOutlet.text;
    char *sign;
    double d1, d2;

    sscanf(vvod, "%lE%c%lE", &d1, sign, &d2);
     NSLog(@"first digit = %lf \nsecond digit = %lf \nsign = %s", d1, d2, sign);
    */
}

- (void) deystvie {
    sscanf(self.vvod, "%lf%c%lf", self.d1, self.sign, self.d2);
    NSLog(@"first digit = %lf second digit = %lf sign = %c", self.d1, self.d2, self.sign);
}
    



-(void) arifmethics{
    
    switch (self.operation) {
        case 0:
            self.result = 0;
            break;
            
        case 12:
            self.result = self.firstValue + self.secondValue;
            break;
            
        case 13:
            self.result = self.firstValue - self.secondValue;
            break;
            
        case 14:
            self.result = self.firstValue * self.secondValue;
            break;
            
        case 15:
            self.result = self.firstValue / self.secondValue;
            break;
            
        default:
            break;
    }
}

- (NSMutableString*) appendSymbol:(NSInteger)code andString:(NSMutableString*)str
{
    switch (code) {
        case 10:
            str = [NSMutableString stringWithString:@"0"];
            self.operation = 0;
            self.result = 0;
            break;
            
        case 11:
            [str appendString:@"= "];
            [self arifmethics];
            [str appendString:[NSString stringWithFormat:@"%li", self.result]];
            break;
            
        case 12:
            [str appendString:@"+ "];
            self.operation = 12;
            break;
            
        case 13:
            [str appendString:@"- "];
            self.operation = 13;
            break;
            
        case 14:
            [str appendString:@"* "];
            self.operation = 14;
            break;
            
        case 15:
            [str appendString:@"/ "];
            self.operation = 15;
            break;
            
        default:
            break;
    }
    
    return str;
}


@end

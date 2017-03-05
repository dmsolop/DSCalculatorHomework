//
//  ViewController.m
//  SDCalсulator
//
//  Created by Дмитрий Солоп on 05.05.16.
//  Copyright © 2016 Дмитрий Солоп. All rights reserved.
//

#import "ViewController.h"



@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *buttonClear;
@property (weak, nonatomic) IBOutlet UIButton *buttonDel;
@property (weak, nonatomic) IBOutlet UIButton *buttonPro;
@property (weak, nonatomic) IBOutlet UIButton *buttonMinus;
@property (weak, nonatomic) IBOutlet UIButton *buttonPlus;
@property (weak, nonatomic) IBOutlet UIButton *buttonResult;
@property (weak, nonatomic) IBOutlet UIButton *firstButton;
//@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *buttonArray;
@property (weak, nonatomic) IBOutlet UILabel *resultTField;

@property (nonatomic, strong) NSMutableString *showFormula;

@property (nonatomic, assign) NSInteger result;
@property (nonatomic, assign) NSInteger firstValue;
@property (nonatomic, assign) NSInteger secondValue;
@property (nonatomic, assign) NSInteger operation;

@property (nonatomic, assign) BOOL isSecond;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.showFormula = [NSMutableString new];
    self.isSecond = false;
}

#pragma mark - Actions

- (IBAction)showNumber:(UIButton *)sender {
    
    if(self.isSecond && sender.tag < 10)
    {
        self.secondValue = sender.tag;
        self.isSecond = NO;
    }else if (sender.tag < 10) {
        self.firstValue = sender.tag;
        self.isSecond = YES;
    }
    
    if([self.showFormula isEqualToString:@"0"])
    {
        self.showFormula = [NSMutableString new];
    }
    
    if(sender.tag <10)
    {
        [self.showFormula appendString:[NSString stringWithFormat:@"%li ", sender.tag]];
        
    }
    else {
        self.showFormula = [self appendSymbol:sender.tag andString:self.showFormula];
        
    }
    
    self.resultTField.text = self.showFormula;
    
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

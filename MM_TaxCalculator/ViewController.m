//
//  ViewController.m
//  MM_TaxCalculator
//
//  Created by Gabriel Borri de Azevedo on 12/4/14.
//  Copyright (c) 2014 Gabriel Borri de Azevedo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *priceTextField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;
@property (weak, nonatomic) IBOutlet UISegmentedControl *UISegmented;
@property double caTax;
@property double chiTax;
@property double nyTax;
@property long price;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _caTax = 7.5;
    _chiTax = 9.25;
    _nyTax = 4.5;
}
- (IBAction)onCalculateButtonTapped:(id)sender {
    _UISegmented.selectedSegmentIndex = 0;
    _price = [_priceTextField.text doubleValue];
    _resultLabel.text = [NSString stringWithFormat:@"%.2f $",((_price*_caTax)/100)];
}

- (IBAction)onUISegmentedTapped:(id)sender {
    switch ([_UISegmented selectedSegmentIndex]) {
        case 0:
            _resultLabel.text = [NSString stringWithFormat:@"%.2f $",((_price*_caTax)/100)];
            break;
        case 1:
            _resultLabel.text = [NSString stringWithFormat:@"%.2f $",((_price*_chiTax)/100)];
            break;
        case 2:
            _resultLabel.text = [NSString stringWithFormat:@"%.2f $",((_price*_nyTax)/100)];
            break;

        default:
            break;
    }
}


@end

//
//  ViewController.m
//  Tax
//
//  Created by Michael Andrew Pujol on 3/20/15.
//  Copyright (c) 2015 Michael Pujol. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *priceTextField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;

@property double caTax;
@property double chiTax;
@property double nyTax;

@end

@implementation ViewController

- (IBAction)onCalculateButtonTapped:(id)sender {

    if (self.segmentedControl.selectedSegmentIndex == 0) {
        double price = [self.priceTextField.text integerValue];
        double priceWithTax = price * ((self.caTax/100)+1);
        self.resultLabel.text = [NSString stringWithFormat:@"%.2f",priceWithTax];
    } else if (self.segmentedControl.selectedSegmentIndex == 1) {
        double price = [self.priceTextField.text integerValue];
        double priceWithTax = price * ((self.chiTax/100)+1);
        self.resultLabel.text = [NSString stringWithFormat:@"%.2f",priceWithTax];
    } else if (self.segmentedControl.selectedSegmentIndex == 2) {
        double price = [self.priceTextField.text integerValue];
        double priceWithTax = price * ((self.nyTax/100)+1);
        self.resultLabel.text = [NSString stringWithFormat:@"%.2f",priceWithTax];
    }

}


- (void)viewDidLoad {
    [super viewDidLoad];

    self.caTax = 7.5;
    self.chiTax = 9.25;
    self.nyTax = 4.5;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

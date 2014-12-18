//
//  FirstViewController.m
//  Cooking Timer
//
//  Created by Alex on 06/12/2014.
//  Copyright (c) 2014 Alex Curran. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()
- (IBAction)buttonClicked:(id)sender;
@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonClicked:(id)sender {
    // Get the count down the user has entered into the date picker
    
    // Create a timer with the number of seconds
    
    // Create an alert (or something) when the timer counts down
}
@end

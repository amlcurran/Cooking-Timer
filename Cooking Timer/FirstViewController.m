//
//  FirstViewController.m
//  Cooking Timer
//
//  Created by Alex on 06/12/2014.
//  Copyright (c) 2014 Alex Curran. All rights reserved.
//

#import "FirstViewController.h"
#import "Cooking_Timer-Swift.h"

@interface FirstViewController ()
- (IBAction)buttonClicked:(id)sender;
@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;
@property (weak, nonatomic) IBOutlet UITextField *timerName;
@property (nonatomic, strong) NotificationController *notificationController;

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.notificationController = [NotificationController new];
    [self.notificationController checkNotificationSettings];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonClicked:(id)sender {
    // Get the count down the user has entered into the date picker
    NSTimeInterval countdown = [self.datePicker countDownDuration];
    // Create a timer with the number of seconds, if we're in debug, make the countdown shorter
#ifdef DEBUG
    countdown = 15.0;
#endif
    
    NotificationController *controller = [NotificationController new];
    [controller send:countdown foodName:self.timerName.text];
}

- (void)timerPinged:(NSTimer *)timer
{
    // Pull the timer name out of dictionary
    NSString *timerName = timer.userInfo[@"title"];
    NSString *message = [NSString stringWithFormat:@"Your %@ is ready to take out the oven", timerName];
    
    [[[UIAlertView alloc] initWithTitle:@"Ping!" message:message delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil] show];
}

@end

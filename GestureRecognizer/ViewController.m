//
//  ViewController.m
//  GestureRecognizer
//
//  Created by supervisor on 3/12/14.
//  Copyright (c) 2014 La Creativería. All rights reserved.
//

#import "ViewController.h"
#import "SVProgressHUD.h"
#import "FSQFoursquareAPIClient.h"

@interface ViewController ()

@end

@implementation ViewController

//@synthesize homeImg;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
//    UILongPressGestureRecognizer *press = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(hasLongPressed:)];
//    [press setMinimumPressDuration:0.1f];
//    press.delegate = (id)self;
//    
//    [self.view addGestureRecognizer: press];
//    
//    UISwipeGestureRecognizer *swipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(hasSwiped:)];
//    swipe.delegate = (id)self;
//    [self.view addGestureRecognizer: swipe];
    
    //Inicializar notificación local
    UILocalNotification *localNotification = [[UILocalNotification alloc] init];
    
    //calendarizar notificación
    [localNotification setFireDate:[[NSDate date] dateByAddingTimeInterval:10.0]];
    [localNotification setAlertBody:@"Feliz Cumpleaños!!"];
    [localNotification setSoundName:UILocalNotificationDefaultSoundName];
    [localNotification setApplicationIconBadgeNumber:1];
    [[UIApplication sharedApplication] scheduleLocalNotification:localNotification];
}

//- (void)hasLongPressed:(UILongPressGestureRecognizer *)recognizer{
//    NSLog(@"Hola");
//}
//
//- (void)hasSwiped:(UISwipeGestureRecognizer *)recognizer{
//    homeImg.image = [UIImage imageNamed:@"lateralus.gif"];
//}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

//
//  ViewController.m
//  Password Screen
//
//  Created by Conor Williams [el16cbw] on 20/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)enterPasswordButtonPressed:(id)sender {
    
    NSString *passwordString = [NSString stringWithFormat:@"gw00d"]; //set password
    
    if([_enterPasswordField.text isEqualToString:passwordString]) { //password matches
        NSLog(@"password is correct"); //App moves to select function view
    }
    else { //password doesn't match
        NSLog(@"password is incorrect");
        UIAlertController *incorrectPasswordAlert = [UIAlertController alertControllerWithTitle:@"Incorrect Password" message:@"Please Try Again" preferredStyle:UIAlertControllerStyleAlert]; //warning pop up if incorrect password entered
        UIAlertAction *okButton = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleCancel handler:nil]; //returns to view to re-input password
        [incorrectPasswordAlert addAction:okButton];
        [self presentViewController:incorrectPasswordAlert animated:YES completion:nil];
    }
}
@end

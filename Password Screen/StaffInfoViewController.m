//
//  StaffInfoViewController.m
//  Password Screen
//
//  Created by Conor Williams [el16cbw] on 20/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "StaffInfoViewController.h"

@interface StaffInfoViewController ()


@end

@implementation StaffInfoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.nameLabel.text = self.staffInformation.name;
    self.dateStartedLabel.text = self.staffInformation.dateJoined;
    self.emergencyContactNameLabel.text = self.staffInformation.emergencyContactName;
    self.emergencyContactNumberLabel.text = self.staffInformation.emergencyContactNumber;
    self.languagesLabel.text = self.staffInformation.languagesSpoken;
    self.trainedOnLabel.text = self.staffInformation.trainedOn;
    self.staffPhoto.image = [UIImage imageNamed:@"Face1.jpg"];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

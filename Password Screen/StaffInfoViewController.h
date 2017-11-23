//
//  StaffInfoViewController.h
//  Password Screen
//
//  Created by Conor Williams [el16cbw] on 20/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StaffInformation.h"

@interface StaffInfoViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *dateStartedLabel;
@property (weak, nonatomic) IBOutlet UILabel *emergencyContactNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *emergencyContactNumberLabel;
@property (weak, nonatomic) IBOutlet UILabel *languagesLabel;
@property (weak, nonatomic) IBOutlet UILabel *trainedOnLabel;
@property (weak, nonatomic) IBOutlet UIImageView *staffPhotoImageView;


@property (strong, nonatomic) StaffInformation *staffInformation;

@end

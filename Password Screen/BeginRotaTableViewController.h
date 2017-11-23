//
//  BeginRotaTableViewController.h
//  Password Screen
//
//  Created by Conor Williams [el16cbw] on 23/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StaffInformation.h"
#import "StaffInfoDataModel.h"

@interface BeginRotaTableViewController : UITableViewController

@property (strong, nonatomic) StaffInfoDataModel *data;

- (IBAction)beginRotaBackButton:(id)sender;

@end

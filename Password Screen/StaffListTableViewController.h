//
//  StaffInfoTableTableViewController.h
//  Password Screen
//
//  Created by Conor Williams [el16cbw] on 20/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StaffInformation.h"
#import "StaffInfoDataModel.h"
#import "StaffInfoViewController.h"

@interface StaffListTableViewController : UITableViewController

- (IBAction)staffInfoTableBackButtonPressed:(id)sender;

@property (strong, nonatomic) StaffInfoDataModel *data; //Access stored staff info

@end

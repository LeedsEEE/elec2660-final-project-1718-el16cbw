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
#import "CreateRotaTableViewController.h"

@interface BeginRotaTableViewController : UITableViewController

@property (strong, nonatomic) StaffInfoDataModel *data;
@property (strong, nonatomic) NSString *dateEntered;

- (IBAction)beginRotaBackButton:(id)sender;
- (IBAction)staffNameSelected:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *enterDateField;
- (IBAction)dateFieldSelected:(id)sender;
- (IBAction)nextButtonPressed:(id)sender;

@end

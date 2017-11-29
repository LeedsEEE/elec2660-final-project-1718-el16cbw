//
//  CreateRotaTableViewController.h
//  Password Screen
//
//  Created by Conor Williams [el16cbw] on 27/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BeginRotaTableViewController.h"
#import "CustomCreateRotaTableViewCell.h"
#import "StaffInformation.h"
#import "StaffInfoDataModel.h"

@interface CreateRotaTableViewController : UITableViewController

@property (weak, nonatomic) IBOutlet UILabel *dateLabel;
@property (nonatomic, strong) NSString *dateEntered;
@property (strong, nonatomic) StaffInfoDataModel *data;
@property (strong, nonatomic) CustomCreateRotaTableViewCell *customCell;

@end

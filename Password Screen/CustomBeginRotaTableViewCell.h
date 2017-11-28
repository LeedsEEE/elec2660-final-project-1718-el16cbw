//
//  CustomBeginRotaTableViewCell.h
//  Password Screen
//
//  Created by Conor Williams [el16cbw] on 28/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomBeginRotaTableViewCell : UITableViewCell
- (IBAction)staffSelectSwitchPressed:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *staffNameLabel;

@end

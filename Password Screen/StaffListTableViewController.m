//
//  StaffInfoTableTableViewController.m
//  Password Screen
//
//  Created by Conor Williams [el16cbw] on 20/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "StaffListTableViewController.h"

@interface StaffListTableViewController ()


@end

@implementation StaffListTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    self.data = [[StaffInfoDataModel alloc] init];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    NSInteger numberOfRows;
    
    if(section == 0) {
        numberOfRows = self.data.staffInformation.count; //number of rows matches number of staff in datamodel
    }
    return numberOfRows;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"StaffListCell" forIndexPath:indexPath];
    
    // Configure the cell...
    
    if(indexPath.section == 0){
        
        StaffInformation *tempStaffInformation = [self.data.staffInformation objectAtIndex:indexPath.row];
        
        cell.textLabel.text =tempStaffInformation.name;
    }
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    if ([[segue identifier] isEqualToString:@"ShowStaffDetails"]) {
        
        StaffInfoViewController *destinationStaffInfoViewController = [segue destinationViewController];
        
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        
        if(indexPath.section == 0) {
            
            StaffInformation *tempStaffInformation = [self.data.staffInformation objectAtIndex:indexPath.row];
            destinationStaffInfoViewController.staffInformation = tempStaffInformation;
        }
        
    }


}

    
- (IBAction)staffInfoTableBackButtonPressed:(id)sender { //return to selectFunction view controller
}
@end

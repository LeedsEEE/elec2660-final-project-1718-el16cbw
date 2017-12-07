//
//  BeginRotaTableViewController.m
//  Password Screen
//
//  Created by Conor Williams [el16cbw] on 23/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "BeginRotaTableViewController.h"

@interface BeginRotaTableViewController ()

@end

@implementation BeginRotaTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.data = [[StaffInfoDataModel alloc] init];  //initialise array with staff information from data model
    
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
    
    CustomBeginRotaTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"staffNameCell" forIndexPath:indexPath];
    
    
    StaffInformation *tempStaffInformation = [self.data.staffInformation objectAtIndex:indexPath.row];
    
    cell.staffNameLabel.text =tempStaffInformation.name;  //set label to display staff name from data model
    
    
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
    
    if([[segue identifier] isEqualToString:@"nextButtonPressed"]){
        
        CreateRotaTableViewController *createRotaView = [segue destinationViewController];  //next view
        
        UIView *unusedReferenceToViewToLoadTheView = createRotaView.view; //initialises next view
        
        self.dateEntered = self.enterDateField.text; //get user input

        createRotaView.dateLabel.text = self.dateEntered;  //set date label in create rota page to display date
        
        NSLog(@"date is %@", self.dateEntered); //print date
    
        self.staffSwitchStates = [[NSMutableArray alloc]init];
        
        for(NSInteger j = 0 ; j<self.data.staffInformation.count; j++){  //cycle through all cells

            CustomBeginRotaTableViewCell *tempCell = [self.tableView cellForRowAtIndexPath:[NSIndexPath indexPathForRow:j inSection:0]];
            //bool switchState = tempCell.switchOutlet.on; //check switch state
            if(tempCell.staffSwitchOutlet.on){
                [self.staffSwitchStates addObject:tempCell]; //if switched on add to array
                NSLog(@"IS SWITCH ON");
            }

        }
        
        NSInteger arrayLength = self.staffSwitchStates.count; //count number of staff stiwched on
        NSLog(@"NUMBER OF STAFF SELECTED: %ld" , arrayLength);
        NSLog(@"Array: %@", self.staffSwitchStates);
        
    }
}



- (IBAction)beginRotaBackButton:(id)sender { //returns to selectFunction
}

- (IBAction)staffNameSelected:(id)sender { //Switch next to name turned 'on'
    
    [_enterDateField resignFirstResponder];  //close keyboard when begin selecting staff
    
}
- (IBAction)dateFieldSelected:(id)sender { //user inputs date
}

- (IBAction)nextButtonPressed:(id)sender {

}

@end

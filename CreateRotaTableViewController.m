//
//  CreateRotaTableViewController.m
//  Password Screen
//
//  Created by Conor Williams [el16cbw] on 27/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "CreateRotaTableViewController.h"

@interface CreateRotaTableViewController ()

@end

@implementation CreateRotaTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.data = [[StaffInfoDataModel alloc] init];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.

}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 8;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    NSInteger numberOfRows;
    
        numberOfRows = self.staffWorking.count;

    return numberOfRows;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    CustomCreateRotaTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"timeSelectCell" forIndexPath:indexPath];
    
    tableView.allowsSelection = NO; //removes cell highlighting code found from: https://stackoverflow.com/questions/190908/how-can-i-disable-the-uitableview-selection-highlighting?rq=1
    
    // Configure the cell
    
    StaffInformation *tempStaffInformation = [self.staffWorking objectAtIndex:indexPath.row];
    cell.nameLabel.text = tempStaffInformation.name;

    if(indexPath.section == 0){ // Green dragon
        for(NSInteger j = 0 ; j < self.staffWorking.count ; j++) { //cycle through rows in section
            if([cell.nameLabel.text isEqualToString:@"Declan Williams"]) {
                cell.nameLabel.text = @"Declan Williams *";
            }
            else if([cell.nameLabel.text isEqualToString:@"Peter vonTrinklestein"]){
                cell.nameLabel.text = @"Peter vonTrinklestein *";
            }
            else if([cell.nameLabel.text isEqualToString:@"Adrian Meacher"]){
                cell.nameLabel.text = @"Adrian Meacher *";
            }
            else if([cell.nameLabel.text isEqualToString:@"Oliver Chard"]){
                cell.nameLabel.text = @"Oliver Chard *";
            }
        }
    }
    
    if(indexPath.section == 1){ // Solar Splash
        for(NSInteger j = 0 ; j < self.staffWorking.count ; j++) { //cycle through rows in section
            if([cell.nameLabel.text isEqualToString:@"Declan Williams"]) {
                cell.nameLabel.text = @"Declan Williams *";
            }
            else if([cell.nameLabel.text isEqualToString:@"Peter vonTrinklestein"]){
                cell.nameLabel.text = @"Peter vonTrinklestein *";
            }
            else if([cell.nameLabel.text isEqualToString:@"John Kelly"]){
                cell.nameLabel.text = @"John Kelly *";
            }
            else if([cell.nameLabel.text isEqualToString:@"Adrian Meacher"]){
                cell.nameLabel.text = @"Adrian Meacher *";
            }
            else if([cell.nameLabel.text isEqualToString:@"Brian Brianson"]){
                cell.nameLabel.text = @"Brian Brianson *";
            }
            else if([cell.nameLabel.text isEqualToString:@"Luce Kelly"]){
                cell.nameLabel.text = @"Luce Kelly *";
            }
        }
    }
    
    if(indexPath.section == 6){ //Archery
        for(NSInteger j = 0 ; j < self.staffWorking.count ; j++) { //cycle through rows in section
            if([cell.nameLabel.text isEqualToString:@"Declan Williams"]) {
                cell.nameLabel.text = @"Declan Williams *";
            }
            else if([cell.nameLabel.text isEqualToString:@"Brian Brianson"]){
                cell.nameLabel.text = @"Brian Brianson *";
            }
        }
    }
    
    if(indexPath.section == 7){ //Costume
        for(NSInteger j = 0 ; j < self.staffWorking.count ; j++) { //cycle through rows in section
            if([cell.nameLabel.text isEqualToString:@"Declan Williams"]) {
                cell.nameLabel.text = @"Declan Williams *";
            }
            else if([cell.nameLabel.text isEqualToString:@"Niall Williams"]){
                cell.nameLabel.text = @"Niall Williams *";
            }
            else if([cell.nameLabel.text isEqualToString:@"Brian Brianson"]) {
                cell.nameLabel.text = @"Brian Brianson *";
            }
            else if([cell.nameLabel.text isEqualToString:@"Peter vonTrinklestein"]){
                cell.nameLabel.text = @"Peter vonTrinklestein *";
            }
            else if([cell.nameLabel.text isEqualToString:@"Adrian Meacher"]) {
                cell.nameLabel.text = @"Adrian Meacher *";
            }
            else if([cell.nameLabel.text isEqualToString:@"Kelly-Louise Jones"]){
                cell.nameLabel.text = @"Kelly-Louise Jones *";
            }
        }
    }
    
    return cell;
    
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    if(section == 0)
    {
        return @"Green Dragon";
    }
    else if(section == 1)
    {
        return @"Solar Splash";
    }
    else if(section == 2)
    {
        return @"Moon Karts";
    }
    else if(section == 3)
    {
        return @"Jungle Boats";
    }
    else if(section == 4)
    {
        return @"Slide";
    }
    else if(section == 5)
    {
        return @"Pillow";
    }
    else if(section == 6)
    {
        return @"Archery";
    }
    else
    {
        return @"Costume";
    }
}

- (void)tableView:(UITableView *)tableView willDisplayHeaderView:(UIView *)view forSection:(NSInteger)section
{
    // Background color
    view.tintColor = [UIColor redColor];
    
    // Text Color
    UITableViewHeaderFooterView *header = (UITableViewHeaderFooterView *)view;
    [header.textLabel setTextColor:[UIColor whiteColor]];
    
    //Above code found here https://stackoverflow.com/questions/813068/uitableview-change-section-header-color

}

/* - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{

    CGFloat heightOfRow = 44; //row height
    
    //NSIndexPath *staffWorkingCell = [NSIndexPath indexPathForRow:j inSection:i ];
    
    if(indexPath.section == 1){
        for(NSInteger j = 0 ; j < 10 ; j++) { //cycle through rows in section
            if([_customCell.nameLabel.text isEqualToString:@"Conor Williams"]) {
                heightOfRow = 0;
            }
            [tableView beginUpdates];
            [tableView endUpdates];
            
    }
    }
        return heightOfRow;

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
    
}

@end

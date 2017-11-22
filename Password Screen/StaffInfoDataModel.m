//
//  StaffInfoDataModel.m
//  Password Screen
//
//  Created by Conor Williams [el16cbw] on 20/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "StaffInfoDataModel.h"

@implementation StaffInfoDataModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        self.staffInformation = [NSMutableArray array];
        StaffInformation *name1 = [[StaffInformation alloc] init];
        name1.name = @"Conor Williams";
        name1.dateJoined = @"Joined on: 15/02/2014";
        name1.emergencyContactName = @"Emergency contact name: Luce Kelly";
        name1.emergencyContactNumber = @"Emergency contact number: 07584126589";
        name1.languagesSpoken = @"Speaks: Enlgish, Welsh";
        name1.trainedOn = @"Trained on: Green Dragon, Solar Splash,\n Moon Karts, Jungle Boats, Slide, Pillow,\n Archery, Costume";
        name1.staffPhoto.image =[UIImage imageNamed:@"Face1.jpg"];
        
        self.staffInformation = [NSMutableArray array];
        StaffInformation *name2 = [[StaffInformation alloc] init];
        name2.name = @"Declan Williams";
        name2.dateJoined = @"Joined on: 25/04/2016";
        name2.emergencyContactName = @"Emergency contact name: Mark Williams";
        name2.emergencyContactNumber = @"Emergency contact number: 0779258432";
        name2.languagesSpoken = @"Speaks: Enlgish, Welsh";
        name2.trainedOn = @"Trained on: Moon Karts, Jungle Boats,\n Slide, Pillow";
    
        self.staffInformation = [NSMutableArray array];
        StaffInformation *name3 = [[StaffInformation alloc] init];
        name3.name = @"Niall Williams";
        name3.dateJoined = @"Joined on: 27/03/2012";
        name3.emergencyContactName = @"Emergency contact name: Mark Williams";
        name3.emergencyContactNumber = @"Emergency contact number: 07548474595";
        name3.languagesSpoken = @"Speaks: Enlgish, Welsh";
        name3.trainedOn = @"Trained on: Green Dragon, Solar Splash,\n Moon Karts, Jungle Boats, Slide,\n Pillow, Archery";
        
        self.staffInformation = [NSMutableArray array];
        StaffInformation *name4 = [[StaffInformation alloc] init];
        name4.name = @"Brain Brianson";
        name4.dateJoined = @"Joined on: 03/02/2015";
        name4.emergencyContactName = @"Emergency contact name: Brienne Brianson";
        name4.emergencyContactNumber = @"Emergency contact number: 07234126589";
        name4.languagesSpoken = @"Speaks: Enlgish, Welsh, Polish";
        name4.trainedOn = @"Trained on: Green Dragon, Moon Karts,\n Jungle Boats, Slide, Pillow";
    
        self.staffInformation = [NSMutableArray array];
        StaffInformation *name5 = [[StaffInformation alloc] init];
        name5.name = @"Peter vonTrinklestein";
        name5.dateJoined = @"Joined on: 23/05/2016";
        name5.emergencyContactName = @"Emergency contact name: Anna vonTrinklestein";
        name5.emergencyContactNumber = @"Emergency contact number: 07584175314";
        name5.languagesSpoken = @"Speaks: Enlgish, Russian";
        name5.trainedOn = @"Trained on: Moon Karts, Jungle Boats,\n Slide, Pillow, Archery";
        
        /* Add above info to array */
        [self.staffInformation addObject:name1]; //index 0
        [self.staffInformation addObject:name2]; //index 1
        [self.staffInformation addObject:name3]; //index 2
        [self.staffInformation addObject:name4]; //index 3
        [self.staffInformation addObject:name5]; //index 4
        
    }
    return self;
    
}
@end

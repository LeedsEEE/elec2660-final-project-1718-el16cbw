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
        name1.dateJoined = @"15/02/2014";
        name1.emergencyContactName = @"Luce Kelly";
        name1.emergencyContactNumber = @"07584126589";
        name1.languagesSpoken = @"Enlgish, Welsh";
        name1.trainedOn = @"Green Dragon, Solar Splash, Moon Karts, Jungle Boats, Slide, Pillow, Archery, Costume";

        self.staffInformation = [NSMutableArray array];
        StaffInformation *name2 = [[StaffInformation alloc] init];
        name2.name = @"Declan Williams";
        name2.dateJoined = @"25/04/2016";
        name2.emergencyContactName = @"Mark Williams";
        name2.emergencyContactNumber = @"0779258432";
        name2.languagesSpoken = @"Enlgish, Welsh";
        name2.trainedOn = @"Moon Karts, Jungle Boats, Slide, Pillow";
    
        self.staffInformation = [NSMutableArray array];
        StaffInformation *name3 = [[StaffInformation alloc] init];
        name3.name = @"Niall Williams";
        name3.dateJoined = @"27/03/2012";
        name3.emergencyContactName = @"Mark Williams";
        name3.emergencyContactNumber = @"07548474595";
        name3.languagesSpoken = @"Enlgish, Welsh";
        name3.trainedOn = @"Green Dragon, Solar Splash, Moon Karts, Jungle Boats, Slide, Pillow, Archery";
        
        self.staffInformation = [NSMutableArray array];
        StaffInformation *name4 = [[StaffInformation alloc] init];
        name4.name = @"Brain Brianson";
        name4.dateJoined = @"03/02/2015";
        name4.emergencyContactName = @"Brienne Brianson";
        name4.emergencyContactNumber = @"07234126589";
        name4.languagesSpoken = @"Enlgish, Welsh, Polish";
        name4.trainedOn = @"Green Dragon, Moon Karts, Jungle Boats, Slide, Pillow";
    
        self.staffInformation = [NSMutableArray array];
        StaffInformation *name5 = [[StaffInformation alloc] init];
        name5.name = @"Peter vonTrinklestein";
        name5.dateJoined = @"23/05/2016";
        name5.emergencyContactName = @"Stephanie vonTrinklestein";
        name5.emergencyContactNumber = @"07584175314";
        name5.languagesSpoken = @"Enlgish, Russian";
        name5.trainedOn = @"Moon Karts, Jungle Boats, Slide, Pillow, Archery";
        
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

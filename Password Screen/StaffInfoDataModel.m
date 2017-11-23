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
        UIImage *image1 = [UIImage imageNamed:@"Face1.jpg"];
        name1.staffPhoto = image1;
        
        self.staffInformation = [NSMutableArray array];
        StaffInformation *name2 = [[StaffInformation alloc] init];
        name2.name = @"Declan Williams";
        name2.dateJoined = @"Joined on: 25/04/2016";
        name2.emergencyContactName = @"Emergency contact name: Mark Williams";
        name2.emergencyContactNumber = @"Emergency contact number: 0779258432";
        name2.languagesSpoken = @"Speaks: Enlgish, Welsh";
        name2.trainedOn = @"Trained on: Moon Karts, Jungle Boats,\n Slide, Pillow";
        UIImage *image2 = [UIImage imageNamed:@"Face2.jpg"];
        name2.staffPhoto = image2;
    
        self.staffInformation = [NSMutableArray array];
        StaffInformation *name3 = [[StaffInformation alloc] init];
        name3.name = @"Niall Williams";
        name3.dateJoined = @"Joined on: 27/03/2012";
        name3.emergencyContactName = @"Emergency contact name: Mark Williams";
        name3.emergencyContactNumber = @"Emergency contact number: 07548474595";
        name3.languagesSpoken = @"Speaks: Enlgish, Welsh";
        name3.trainedOn = @"Trained on: Green Dragon, Solar Splash,\n Moon Karts, Jungle Boats, Slide,\n Pillow, Archery";
        UIImage *image3  = [UIImage imageNamed:@"Face3.jpg"];
        name3.staffPhoto = image3;
        
        self.staffInformation = [NSMutableArray array];
        StaffInformation *name4 = [[StaffInformation alloc] init];
        name4.name = @"Brain Brianson";
        name4.dateJoined = @"Joined on: 03/02/2015";
        name4.emergencyContactName = @"Emergency contact name: Brienne Brianson";
        name4.emergencyContactNumber = @"Emergency contact number: 07234126589";
        name4.languagesSpoken = @"Speaks: Enlgish, Welsh, Polish";
        name4.trainedOn = @"Trained on: Green Dragon, Moon Karts,\n Jungle Boats, Slide, Pillow";
        UIImage *image4 = [UIImage imageNamed:@"Face4.jpg"];
        name4.staffPhoto = image4;
    
        self.staffInformation = [NSMutableArray array];
        StaffInformation *name5 = [[StaffInformation alloc] init];
        name5.name = @"Peter vonTrinklestein";
        name5.dateJoined = @"Joined on: 23/05/2016";
        name5.emergencyContactName = @"Emergency contact name: Anna vonTrinklestein";
        name5.emergencyContactNumber = @"Emergency contact number: 07584175314";
        name5.languagesSpoken = @"Speaks: Enlgish, Russian";
        name5.trainedOn = @"Trained on: Moon Karts, Jungle Boats,\n Slide, Pillow, Archery";
        UIImage *image5 = [UIImage imageNamed:@"Face5.jpg"];
        name5.staffPhoto = image5;
        
        self.staffInformation = [NSMutableArray array];
        StaffInformation *name6 = [[StaffInformation alloc] init];
        name6.name = @"John Kelly";
        name6.dateJoined = @"Joined on: 11/3/2010";
        name6.emergencyContactName = @"Emergency contact name: Susan Kelly";
        name6.emergencyContactNumber = @"Emergency contact number: 07574446589";
        name6.languagesSpoken = @"Speaks: Enlgish";
        name6.trainedOn = @"Trained on: Green Dragon, Solar Splash,\n Moon Karts, Jungle Boats, Slide, Pillow,\n Archery";
        UIImage *image6 = [UIImage imageNamed:@"Face6.png"];
        name6.staffPhoto = image6;
        
        self.staffInformation = [NSMutableArray array];
        StaffInformation *name7 = [[StaffInformation alloc] init];
        name7.name = @"John Macintosh";
        name7.dateJoined = @"Joined on: 21/03/2015";
        name7.emergencyContactName = @"Emergency contact name: John Macintosh Sr.";
        name7.emergencyContactNumber = @"Emergency contact number: 0777338431";
        name7.languagesSpoken = @"Speaks: Enlgish, Welsh, Spanish";
        name7.trainedOn = @"Trained on: Moon Karts, Jungle Boats,\n Slide, Pillow, Archery";
        UIImage *image7 = [UIImage imageNamed:@"Face7.jpg"];
        name7.staffPhoto = image7;
        
        self.staffInformation = [NSMutableArray array];
        StaffInformation *name8 = [[StaffInformation alloc] init];
        name8.name = @"Kelly-Louise Jones";
        name8.dateJoined = @"Joined on: 12/03/2012";
        name8.emergencyContactName = @"Emergency contact name: Stephen Jones";
        name8.emergencyContactNumber = @"Emergency contact number: 07989854632";
        name8.languagesSpoken = @"Speaks: Enlgish, Welsh";
        name8.trainedOn = @"Trained on: Green Dragon, Solar Splash,\n Moon Karts, Jungle Boats, Slide,\n Pillow, Archery";
        UIImage *image8  = [UIImage imageNamed:@"Face8.jpg"];
        name8.staffPhoto = image8;
        
        self.staffInformation = [NSMutableArray array];
        StaffInformation *name9 = [[StaffInformation alloc] init];
        name9.name = @"Phil Coulson";
        name9.dateJoined = @"Joined on: 13/04/2015";
        name9.emergencyContactName = @"Emergency contact name: Nicholas Fury";
        name9.emergencyContactNumber = @"Emergency contact number: 07788899900";
        name9.languagesSpoken = @"Speaks: Enlgish, Welsh, Spanish, French";
        name9.trainedOn = @"Trained on: Green Dragon, Moon Karts,\n Jungle Boats, Slide, Pillow \n Archery, Costume";
        UIImage *image9 = [UIImage imageNamed:@"Face9.jpg"];
        name9.staffPhoto = image9;
        
        self.staffInformation = [NSMutableArray array];
        StaffInformation *name10 = [[StaffInformation alloc] init];
        name10.name = @"Oliver Chard";
        name10.dateJoined = @"Joined on: 30/01/2014";
        name10.emergencyContactName = @"Emergency contact name: Mark Waterson";
        name10.emergencyContactNumber = @"Emergency contact number: 07554862541";
        name10.languagesSpoken = @"Speaks: Enlgish, German";
        name10.trainedOn = @"Trained on: Solar Splash, Moon Karts, Slide,\n Jungle Boats Pillow, Archery";
        UIImage *image10 = [UIImage imageNamed:@"Face10.jpg"];
        name10.staffPhoto = image10;
        
        
        /* Add above info to array */
        [self.staffInformation addObject:name1]; //index 0
        [self.staffInformation addObject:name2]; //index 1
        [self.staffInformation addObject:name3]; //index 2
        [self.staffInformation addObject:name4]; //index 3
        [self.staffInformation addObject:name5]; //index 4
        [self.staffInformation addObject:name6]; //index 5
        [self.staffInformation addObject:name7]; //index 6
        [self.staffInformation addObject:name8]; //index 7
        [self.staffInformation addObject:name9]; //index 8
        [self.staffInformation addObject:name10]; //index 9
        
    }
    return self;
    
}
@end

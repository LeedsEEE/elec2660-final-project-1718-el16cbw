//
//  StaffInformation.h
//  Password Screen
//
//  Created by Conor Williams [el16cbw] on 20/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StaffInformation : NSObject

//Type of information to display about each staff member
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *dateJoined;
@property (nonatomic, strong) NSString *emergencyContactName;
@property (nonatomic, strong) NSString *emergencyContactNumber; //Can't use integer as first zero in number causes program to treat it as octal constant
@property (nonatomic, strong) NSString *languagesSpoken;
@property (nonatomic, strong) NSString *trainedOn;

@end

//
//  StaffInfoDataModel.h
//  Password Screen
//
//  Created by Conor Williams [el16cbw] on 20/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StaffInformation.h"


@interface StaffInfoDataModel : NSObject

@property (strong, nonatomic) NSMutableArray *staffInformation; //array indefinite length to store inforamtion about all different staff members

@end

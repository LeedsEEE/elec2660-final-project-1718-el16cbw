//
//  ViewController.h
//  Password Screen
//
//  Created by Conor Williams [el16cbw] on 20/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *greenwoodLogoImage;
@property (weak, nonatomic) IBOutlet UILabel *enterPasswordLabel;
@property (weak, nonatomic) IBOutlet UITextField *enterPasswordField;
- (IBAction)enterPasswordButtonPressed:(id)sender;

@end


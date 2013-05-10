//
//  AddItemViewController.h
//  HappyGrocer
//
//  Created by Kirsten Kane on 4/22/13.
//  Copyright (c) 2013 Kirsten Kane. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>
#import "Toast+UIView.h"

@interface AddItemViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *Name;
@property (weak, nonatomic) IBOutlet UITextField *Note;
@property (weak, nonatomic) IBOutlet UITextField *Quantity;
@property (weak, nonatomic) IBOutlet UIStepper *NumItemStepper;

- (IBAction)submit:(id)sender;
- (IBAction)stepperValueChanged:(id)sender;
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event;

@end

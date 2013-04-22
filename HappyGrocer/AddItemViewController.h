//
//  AddItemViewController.h
//  HappyGrocer
//
//  Created by Kirsten Kane on 4/22/13.
//  Copyright (c) 2013 Kirsten Kane. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddItemViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *Name;
@property (weak, nonatomic) IBOutlet UITextField *Note;
- (IBAction)back:(id)sender;
- (IBAction)submit:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *back;
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event;

@end

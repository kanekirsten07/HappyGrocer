//
//  HappyGrocerViewController.h
//  HappyGrocer
//
//  Created by Kirsten Kane on 4/4/13.
//  Copyright (c) 2013 Kirsten Kane. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HappyGrocerViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *MainMenu;
- (IBAction)AddItem:(id)sender;
- (IBAction)ViewItem:(id)sender;

@end

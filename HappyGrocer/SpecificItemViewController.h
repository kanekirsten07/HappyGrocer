//
//  SpecificItemViewController.h
//  HappyGrocer
//
//  Created by Kirsten Kane on 5/6/13.
//  Copyright (c) 2013 Kirsten Kane. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>

@interface SpecificItemViewController : UIViewController

- (IBAction)deleteItem:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel *ItemName;
@property (weak, nonatomic) IBOutlet UILabel *NumNeeded;

@property (weak, nonatomic) IBOutlet UILabel *DateNeeded;
@property (nonatomic) NSString *NameOfItem;
@end

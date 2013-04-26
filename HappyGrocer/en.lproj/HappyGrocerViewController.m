//
//  HappyGrocerViewController.m
//  HappyGrocer
//
//  Created by Kirsten Kane on 4/26/13.
//  Copyright (c) 2013 Kirsten Kane. All rights reserved.
//

#import "HappyGrocerViewController.h"

@interface HappyGrocerViewController ()

@end

@implementation HappyGrocerViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)AddItem:(id)sender {
    NSLog(@"I was clicked!");
}
@end

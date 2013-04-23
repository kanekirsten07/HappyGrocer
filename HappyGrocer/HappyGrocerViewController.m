//
//  HappyGrocerViewController.m
//  HappyGrocer
//
//  Created by Kirsten Kane on 4/4/13.
//  Copyright (c) 2013 Kirsten Kane. All rights reserved.
//

#import "HappyGrocerViewController.h"
#import "AddItemViewController.h"
#import "ItemViewController.h"

@interface HappyGrocerViewController ()

@end

@implementation HappyGrocerViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)AddItem:(id)sender {
    AddItemViewController *AVC = [[AddItemViewController alloc]initWithNibName:@"AddItemViewController" bundle:nil];
    
    [self presentModalViewController:AVC animated:YES];
}

- (IBAction)ViewItem:(id)sender {
    
    ItemViewController *IVC =[[ItemViewController alloc]initWithNibName:@"ItemViewController" bundle:nil];
    [self presentModalViewController:IVC animated:YES];
   
}
@end

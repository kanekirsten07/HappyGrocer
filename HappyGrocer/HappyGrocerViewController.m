//
//  HappyGrocerViewController.m
//  HappyGrocer
//
//  Created by Kirsten Kane on 5/6/13.
//  Copyright (c) 2013 Kirsten Kane. All rights reserved.
//

#import "HappyGrocerViewController.h"
#import "ItemViewController.h"
#import "AddItemViewController.h"
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
    AddItemViewController *AVC = [[AddItemViewController alloc] initWithNibName:@"AddItemViewController" bundle:nil];
    [self.navigationController pushViewController:AVC animated:YES];
    
}

- (IBAction)ViewItems:(id)sender {
    ItemViewController *IVC =[[ItemViewController alloc]initWithStyle:UITableViewStylePlain];
    [self.navigationController pushViewController:IVC animated:YES];

}
@end

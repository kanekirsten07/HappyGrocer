//
//  AddItemViewController.m
//  HappyGrocer
//
//  Created by Kirsten Kane on 4/22/13.
//  Copyright (c) 2013 Kirsten Kane. All rights reserved.
//

#import "AddItemViewController.h"


@interface AddItemViewController ()

@end

@implementation AddItemViewController
@synthesize Name = _name;
@synthesize Note = _note;

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
-(void)touchesBegan:(NSSet *) touches withEvent:(UIEvent *)event{
    
    UITouch *touch = [touches anyObject];
    if(touch.phase == UITouchPhaseBegan) {
        [self.Name resignFirstResponder];
        [self.Note resignFirstResponder];
    }
}

- (IBAction)back:(id)sender {
        [self dismissModalViewControllerAnimated:YES];
}

- (IBAction)submit:(id)sender {
    NSString *myname = _name.text;
    PFObject *item = [PFObject objectWithClassName:@"Groceries"];
    [item setObject:[NSString stringWithFormat:@"%@",myname] forKey:@"Name"];
    [item save];
    [self.view makeToast:@"Item Added"];
}
@end

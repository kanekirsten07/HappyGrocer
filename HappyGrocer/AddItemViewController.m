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
@synthesize Quantity = _Quantity;
@synthesize NumItemStepper = stepper1;

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
        [self.Quantity resignFirstResponder];
    }
}
-(IBAction)stepperValueChanged:(UIStepper *)sender
{
    _Quantity.text = [NSString stringWithFormat:@"%ld", (long)stepper1.value];
    NSLog(@"Value of stepper is %ld", (long)stepper1.value);
}



- (IBAction)submit:(id)sender {
    NSString *myname = _name.text;
    PFObject *item = [PFObject objectWithClassName:@"Groceries"];

    [item setObject:[NSString stringWithFormat:@"%@",myname] forKey:@"Name"];
    [item setObject:[NSString stringWithFormat:@"%@", _note.text] forKey:@"Note"];
    [item setObject:[NSNumber numberWithInt:[_Quantity.text intValue]] forKey:@"Quantity"];
    [item save];
    [self.view makeToast:@"Item Added"];
}
@end

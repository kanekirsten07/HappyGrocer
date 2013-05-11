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
@synthesize DateNeeded;
@synthesize scrollview;

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
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(hideKeyboard)];
    tap.cancelsTouchesInView = NO;
    [self.scrollview addGestureRecognizer:tap];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)hideKeyboard
{
    [self.Name resignFirstResponder];
    [self.Note resignFirstResponder];
    [self.Quantity resignFirstResponder];
    [self.DateNeeded resignFirstResponder];
}

-(IBAction)stepperValueChanged:(UIStepper *)sender
{
    _Quantity.text = [NSString stringWithFormat:@"%ld", (long)stepper1.value];
    NSLog(@"Value of stepper is %ld", (long)stepper1.value);
}



- (IBAction)submit:(id)sender {
    NSString *myname = _name.text;
    PFObject *item = [PFObject objectWithClassName:@"Groceries"];
    NSDate *mydate = DateNeeded.date;
    [item setObject:[NSString stringWithFormat:@"%@",myname] forKey:@"Name"];
    [item setObject:[NSString stringWithFormat:@"%@", _note.text] forKey:@"Note"];
    [item setObject:[NSNumber numberWithInt:[_Quantity.text intValue]] forKey:@"Quantity"];
    [item setObject:mydate forKey:@"Needed_By"];
    [item save];
    [self.view makeToast:@"Item Added"];
}
@end

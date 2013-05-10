//
//  SpecificItemViewController.m
//  HappyGrocer
//
//  Created by Kirsten Kane on 5/6/13.
//  Copyright (c) 2013 Kirsten Kane. All rights reserved.
//

#import "SpecificItemViewController.h"


@interface SpecificItemViewController ()

@end

@implementation SpecificItemViewController
{
    PFQuery *ItemQuery;
    PFObject *myItem;
}
@synthesize ItemName = _Iname;
@synthesize NameOfItem ;
@synthesize Note = _Note;
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

    _Iname.text = [NSString stringWithFormat:@"%@", NameOfItem];

 //   myItem = [PFQuery queryWithClassName:@"Groceries"];
    ItemQuery =[PFQuery queryWithClassName:@"Groceries"];
    [ItemQuery whereKey:@"Name" equalTo:[NSString stringWithFormat:@"%@",NameOfItem]];

     [ItemQuery getFirstObjectInBackgroundWithBlock:^(PFObject *object, NSError *error){
        if(!object)
        {
            NSLog(@"The getFirstObject request failed");
        }else {
            myItem = object;
            NSLog(@"Retrieved object");
   NSString *objectnote =[myItem objectForKey:@"Note"] ;
            _Note.text = [NSString stringWithFormat:@"%@", objectnote];
            //NSDate *mydate = [[myItem objectForKey:@"Needed_By"]date];
           int *quantity = [[myItem objectForKey:@"Quantity"]intValue];
            NSLog(@"Note of object %@", objectnote);
          //  NSLog(@"Date needed %@", mydate);
            NSLog(@"Quantity needed %@", quantity);
        }
    
    }];



}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)deleteItem:(id)sender {
    [myItem deleteInBackground];

}
@end

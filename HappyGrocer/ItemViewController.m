//
//  ItemViewController.m
//  HappyGrocer
//
//  Created by Kirsten Kane on 4/22/13.
//  Copyright (c) 2013 Kirsten Kane. All rights reserved.
//

#import "ItemViewController.h"

@interface ItemViewController ()

@end

@implementation ItemViewController
@synthesize tableview;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void) retriveFromParse{
    PFQuery *retrieveItems = [PFQuery queryWithClassName:@"Groceries" ];
    
    [retrieveItems findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
       if(!error)
       {
           NSLog(@"%@", objects);
           itemsArray = [[NSArray alloc]initWithArray:objects];
        
       }
        [tableview reloadData];
        
    }];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self performSelector:@selector(retriveFromParse)];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
/*
-(NSInteger) numberOfSelectionsInTableView:(UITableView *)tableView {
    return 1;
}
 */

-(NSInteger)tableView:(UITableView *) tableView numberOfRowsInSection:(NSInteger)section {
    return  20;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *cellIdentifier = @"tableview";

    UITableViewCell *cell = [tableview dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (cell == nil)
    {
        cell =[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    /*
    PFObject *tempObject = [itemsArray objectAtIndex:indexPath.row];
*/

    cell.textLabel.text = [NSString stringWithFormat:@"%d", indexPath.row];
    return cell;
}

-(void)tableView:(UITableView *)tableview didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"cell tapped");

}

@end

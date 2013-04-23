//
//  ItemViewController.h
//  HappyGrocer
//
//  Created by Kirsten Kane on 4/22/13.
//  Copyright (c) 2013 Kirsten Kane. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>
#import "ItemCell.h"


@interface ItemViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>
{
    NSArray *itemsArray;
}
@property (weak, nonatomic) IBOutlet UITableView *tableview;




@end

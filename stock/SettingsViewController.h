//
//  SettingsViewController.h
//  searchbar
//
//  Created by osama mourad on 1/30/15.
//  Copyright (c) 2015 osama mourad. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

@interface SettingsViewController : UIViewController <UITableViewDataSource, UITableViewDelegate> {
    NSMutableArray *stock;
}

@property (nonatomic, strong) IBOutlet UITableView *table;

@end

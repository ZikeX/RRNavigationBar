//
//  OptionsTableViewController.h
//  RRNavigationBar
//
//  Created by Moch Xiao on 3/17/17.
//  Copyright © 2017 RedRain. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ConfigItem.h"

typedef void(^DidSelectHandler)(ConfigValue);

@interface OptionsTableViewController : UITableViewController
- (instancetype)initWithConfigItem:(ConfigItem *)item didSelectHandler:(DidSelectHandler)didSelectHandler;
@end

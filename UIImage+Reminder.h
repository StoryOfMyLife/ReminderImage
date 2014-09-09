//
//  UIImage+Reminder.h
//
//  Created by liuty on 14-9-9.
//  Copyright (c) 2014年 liuty. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Reminder)

/**
 *  Create a reminding icon image which can be used in cell and tabItem
 *
 *  @param info reminding content(less than 4 characters) in image, nil or @"" will return a round red dot
 *
 *  @return Reminder Image
 */
+ (UIImage *)reminderImageWithInfo:(NSString *)info;

@end

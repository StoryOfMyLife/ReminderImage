//
//  UIImage+Reminder.m
//
//  Created by liuty on 14-9-9.
//  Copyright (c) 2014年 liuty. All rights reserved.
//

#import "UIImage+Reminder.h"

@implementation UIImage (Reminder)

+ (UIImage *)reminderImageWithInfo:(NSString *)info
{
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 15, 15)];
    view.backgroundColor = [UIColor redColor];
    
    if (info && [info length] > 0) {
        UIFont *font = [UIFont boldSystemFontOfSize:12];
        
        CGSize infoSize = [info sizeWithFont:font];
        CGRect frame = view.frame;
        frame.size.width = MAX(infoSize.width, frame.size.width) + 10;//10=5*2 是字符到边界的gap
        view.frame = frame;
 
        //添加内容
        UILabel *infoLabel = [[UILabel alloc] initWithFrame:view.bounds];
        infoLabel.font = font;
        infoLabel.textAlignment = NSTextAlignmentCenter;
        infoLabel.backgroundColor = [UIColor clearColor];
        infoLabel.textColor = [UIColor whiteColor];
        infoLabel.text = info;
        
        [view addSubview:infoLabel];
    } else {
        //没有info，生成圆点
        view.frame = CGRectMake(0, 0, 10, 10);
    }
    
    //生成圆角
    view.layer.cornerRadius = MIN(CGRectGetWidth(view.frame), CGRectGetHeight(view.frame)) / 2;
    
    //生成图片
    UIGraphicsBeginImageContextWithOptions(view.bounds.size, NO, 0);
    [view.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end

//
//  UIButton+XXF.m
//  HongShiProvider
//
//  Created by  on 2017/11/7.
//  Copyright © 2017年 Hongshi. All rights reserved.
//

#import "UIButton+XXF.h"

@implementation UIButton (XXF)


- (void)setButtonImagePositionStyle:(XXFButtonImagePositionStyle)style space:(CGFloat)space{
    CGFloat imageWith = self.imageView.frame.size.width;
    CGFloat imageHeight = self.imageView.frame.size.height;
    CGFloat labelWidth = 0.0;
    CGFloat labelHeight = 0.0;
    if ([UIDevice currentDevice].systemVersion.floatValue >= 8.0) {
        // 由于iOS8中titleLabel的size为0，用下面的这种设置
        labelWidth = self.titleLabel.intrinsicContentSize.width;
        labelHeight = self.titleLabel.intrinsicContentSize.height;
    } else {
        labelWidth = self.titleLabel.frame.size.width;
        labelHeight = self.titleLabel.frame.size.height;
    }
    if (self.frame.size.width==0 || self.frame.size.height==0 ) {
        NSLog(@"button未设置frame");
        return;
    }
    if (self.frame.size.width<imageWith+labelWidth || self.frame.size.height<imageHeight+labelHeight) {
        NSLog(@"button设置frame过小");
    }
    
    //根据style和space得到imageEdgeInsets和labelEdgeInsets的值
    switch (style) {
        case XXFButtonImagePositionStyleTop:
        {
            self.imageEdgeInsets = UIEdgeInsetsMake(-(labelHeight+space)/2.0, labelWidth/2.0, (labelHeight+space)/2.0, -labelWidth/2.0);
            self.titleEdgeInsets = UIEdgeInsetsMake((imageHeight+space)/2.0, -imageWith/2.0, -(imageHeight+space)/2.0, imageWith/2.0);
        }
            break;
        case XXFButtonImagePositionStyleLeft:
        {
            self.imageEdgeInsets = UIEdgeInsetsMake(0, -space/2.0, 0, space/2.0);
            self.titleEdgeInsets = UIEdgeInsetsMake(0, space/2.0, 0, -space/2.0);
        }
            break;
        case XXFButtonImagePositionStyleBottom:
        {
            self.imageEdgeInsets = UIEdgeInsetsMake((labelHeight+space)/2.0, labelWidth/2.0, -(labelHeight+space)/2.0, -labelWidth/2.0);
            self.titleEdgeInsets = UIEdgeInsetsMake(-(imageHeight+space)/2.0, -imageWith/2.0, (imageHeight+space)/2.0, imageWith/2.0);
        }
            break;
        case XXFButtonImagePositionStyleRight:
        {
            self.imageEdgeInsets = UIEdgeInsetsMake(0, labelWidth+space/2.0, 0, -labelWidth-space/2.0);
            self.titleEdgeInsets = UIEdgeInsetsMake(0, -imageWith-space/2.0, 0, imageWith+space/2.0);
        }
            break;
        case XXFButtonImagePositionStyleLeftContentLeft:
        {
            self.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
            self.titleEdgeInsets = UIEdgeInsetsMake(0, space, 0, -space);
        }
            break;
        case XXFButtonImagePositionStyleLeftContentRight:
        {
            self.contentHorizontalAlignment = UIControlContentHorizontalAlignmentRight;
            self.imageEdgeInsets = UIEdgeInsetsMake(0, -space, 0, +space);
        }
            break;
        case XXFButtonImagePositionStyleRightContentLeft:
        {
            self.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
            self.imageEdgeInsets = UIEdgeInsetsMake(0, labelWidth+space, 0, -labelWidth-space);
            self.titleEdgeInsets = UIEdgeInsetsMake(0, -imageWith, 0, imageWith);
        }
            break;
        case XXFButtonImagePositionStyleRightContentRight:
        {
            self.contentHorizontalAlignment = UIControlContentHorizontalAlignmentRight;
            self.imageEdgeInsets = UIEdgeInsetsMake(0, labelWidth, 0, -labelWidth);
            self.titleEdgeInsets = UIEdgeInsetsMake(0, -imageWith-space, 0, imageWith+space);
        }
            break;
        
        default:
            break;
    }
    
}


@end

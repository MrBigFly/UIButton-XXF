//
//  UIButton+XXF.h
//  HongShiProvider
//
//  Created by  on 2017/11/7.
//  Copyright © 2017年 Hongshi. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef NS_ENUM(NSUInteger, XXFButtonImagePositionStyle) {
    XXFButtonImagePositionStyleTop = 0, // image在上，label在下
    XXFButtonImagePositionStyleLeft, // image在左，label在右
    XXFButtonImagePositionStyleBottom, // image在下，label在上
    XXFButtonImagePositionStyleRight, // image在右，label在左
    XXFButtonImagePositionStyleLeftContentLeft,// image在左，label在右,整体居左
    XXFButtonImagePositionStyleLeftContentRight,// image在左，label在右,整体居右
    XXFButtonImagePositionStyleRightContentLeft,// image在右，label在左,整体居左
    XXFButtonImagePositionStyleRightContentRight// image在右，label在左,整体居右
};
@interface UIButton (XXF)

- (void)setButtonImagePositionStyle:(XXFButtonImagePositionStyle)style space:(CGFloat)space;

@end

//
//  ZGAssistiveBtn.h
//  ZGAssistiveBtnDemo
//
//  Created by offcn_zcz32036 on 2018/4/11.
//  Copyright © 2018年 cn. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef NS_ENUM(NSInteger,ZGAssistiveTouchType) {
    ZGAssistiveTouchTypeNone=0,//可随便移动
    ZGAssistiveTouchTypeVertial,//垂直
    ZGAssistiveTouchTypeHorizontal,//竖直

};
@interface ZGAssistiveBtn : UIButton

/**
 简单创建一个普通按钮

 @param frame 按钮的frame
 @return 按钮
 */
+(instancetype)ZG_touchWithFrame:(CGRect)frame;

/**
 创建一个可拖动按钮

 @param type 滑动类型
 @param frame 按钮的frame
 @param title 按钮的标题内容
 @param titleColor 按钮的标题颜色
 @param titleFont 按钮的标题文字大小
 @param backgroundColor 按钮的背景色
 @param backgroundImage 按钮的背景图片
 @return 可拖动按钮
 */
+(instancetype)ZG_touchWithType:(ZGAssistiveTouchType)type
                          Frame:(CGRect)frame
                          title:(NSString*)title
                     titleColor:(UIColor*)titleColor
                      titleFont:(UIFont*)titleFont
                backgroundColor:(UIColor*)backgroundColor
                backgroundImage:(UIImage*)backgroundImage;
@end

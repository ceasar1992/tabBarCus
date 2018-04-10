//
//  UIColor+HexColor.h
//  HDWenchengMuseum
//
//  Created by hengdaliuyi on 16/9/18.
//  Copyright © 2016年 hengdawb. All rights reserved.
//

#import <UIKit/UIKit.h>

#define hexColorAlpha(colorV,a) [UIColor colorWithHexColorString:colorV andAlpha:a]

@interface UIColor (HexColor)

+ (UIColor *)colorWithHexColorString:(NSString *)hexColorString andAlpha:(CGFloat)alpha;


@end

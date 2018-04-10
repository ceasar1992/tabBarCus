//
//  LLTabBar.h
//  LLRiseTabBarDemo
//
//  Created by Meilbn on 10/18/15.
//  Copyright © 2015 meilbn. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HHTabBarItem.h"
#import "UIColor+HexColor.h"

#define ScreenWidth [UIScreen mainScreen].bounds.size.width
#define ScreenHeight [UIScreen mainScreen].bounds.size.height
#define NewDefaultColor hexColorAlpha(@"#c77a3a", 1)




@protocol LLTabBarDelegate <NSObject>

- (void)tabBarDidSelectedRiseButton;

@end

@interface HHTabBar : UIView

@property (nonatomic, copy) NSArray<NSDictionary *> *tabBarItemAttributes;
@property (nonatomic, weak) id <LLTabBarDelegate> delegate;

@end

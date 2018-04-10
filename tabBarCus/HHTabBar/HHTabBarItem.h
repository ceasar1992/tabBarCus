//
//  HHTabBarItem.h
//  LLRiseTabBarDemo
//
//  Created by Meilbn on 10/18/15.
//  Copyright © 2015 meilbn. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, HHTabBarItemType) {
	HHTabBarItemNormal = 0,
	HHTabBarItemRise,
};

extern NSString *const kHHTabBarItemAttributeTitle ;// NSString
extern NSString *const kHHTabBarItemAttributeNormalImageName;// NSString
extern NSString *const kHHTabBarItemAttributeSelectedImageName;// NSString
extern NSString *const kHHTabBarItemAttributeType;// NSNumber, HHTabBarItemType

@interface HHTabBarItem : UIButton


@end

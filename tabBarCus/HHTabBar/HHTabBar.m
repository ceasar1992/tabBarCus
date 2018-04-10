//
//  LLTabBar.m
//  LLRiseTabBarDemo
//
//  Created by Meilbn on 10/18/15.
//  Copyright © 2015 meilbn. All rights reserved.
//

#import "HHTabBar.h"
#import "AppDelegate.h"

@interface HHTabBar ()

@property (strong, nonatomic) NSMutableArray *tabBarItems;

@end

@implementation HHTabBar

#pragma mark - Lifecycle

- (instancetype)initWithFrame:(CGRect)frame {
	self = [super initWithFrame:frame];
	
	if (self) {
		[self config];
	}
	
	return self;
}

#pragma mark - Private Method

- (void)config {
	UIImageView *topLine = [[UIImageView alloc] initWithFrame:CGRectMake(0, -5, ScreenWidth, 5)];
	topLine.image = [UIImage imageNamed:@"tapbar_top_line"];
	[self addSubview:topLine];
}

- (void)setSelectedIndex:(NSInteger)index {
	for (HHTabBarItem *item in self.tabBarItems) {
		if (item.tag == index) {
			item.selected = YES;
		} else {
			item.selected = NO;
		}
	}
	
    AppDelegate *dele = (AppDelegate *)[UIApplication sharedApplication].delegate;
	UITabBarController *tabBarController = dele.tabVC;
	if (tabBarController) {
		tabBarController.selectedIndex = index;
	}
}

#pragma mark - Touch Event

- (void)itemSelected:(HHTabBarItem *)sender {
    [self setSelectedIndex:sender.tag];
}

#pragma mark - Setter

- (void)setTabBarItemAttributes:(NSArray<NSDictionary *> *)tabBarItemAttributes {
    _tabBarItemAttributes = tabBarItemAttributes.copy;
    
    CGFloat itemWidth = ScreenWidth / _tabBarItemAttributes.count;
    CGFloat tabBarHeight = CGRectGetHeight(self.frame);
    NSInteger itemTag = 0;
    BOOL passedRiseItem = NO;
    
    _tabBarItems = [NSMutableArray arrayWithCapacity:_tabBarItemAttributes.count];
    for (id item in _tabBarItemAttributes) {
        if ([item isKindOfClass:[NSDictionary class]]) {
            NSDictionary *itemDict = (NSDictionary *)item;
            
            HHTabBarItemType type = [itemDict[kHHTabBarItemAttributeType] integerValue];
            CGRect frame = CGRectMake(itemTag * itemWidth + (passedRiseItem ? itemWidth : 0), 0, itemWidth, tabBarHeight);
            
            HHTabBarItem *tabBarItem = [self tabBarItemWithFrame:frame
                                                           title:itemDict[kHHTabBarItemAttributeTitle]
                                                 normalImageName:itemDict[kHHTabBarItemAttributeNormalImageName]
                                               selectedImageName:itemDict[kHHTabBarItemAttributeSelectedImageName] tabBarItemType:type];
            if (itemTag == 0) {
                tabBarItem.selected = YES;
                [tabBarItem setTitleColor:NewDefaultColor forState:UIControlStateSelected];
            }
            
            [tabBarItem addTarget:self action:@selector(itemSelected:) forControlEvents:UIControlEventTouchUpInside];
            
            tabBarItem.tag = itemTag;
            itemTag++;

            
            [_tabBarItems addObject:tabBarItem];
            [self addSubview:tabBarItem];
        }
    }
}

- (HHTabBarItem *)tabBarItemWithFrame:(CGRect)frame title:(NSString *)title normalImageName:(NSString *)normalImageName selectedImageName:(NSString *)selectedImageName tabBarItemType:(HHTabBarItemType)tabBarItemType {
    
    HHTabBarItem *item = [[HHTabBarItem alloc] initWithFrame:frame];
    [item setTitle:title forState:UIControlStateNormal];
    [item setTitle:title forState:UIControlStateSelected];
    item.titleLabel.font = [UIFont systemFontOfSize:10];
    UIImage *normalImage = [UIImage imageNamed:normalImageName];
    UIImage *selectedImage = [UIImage imageNamed:selectedImageName];
    [item setImage:normalImage forState:UIControlStateNormal];
    [item setImage:selectedImage forState:UIControlStateSelected];
    [item setTitleColor:[UIColor colorWithWhite:1 alpha:0.6] forState:UIControlStateNormal];
    [item setTitleColor:NewDefaultColor forState:UIControlStateSelected];
    item.tabBarItemType = tabBarItemType;
    
    return item;
}


@end

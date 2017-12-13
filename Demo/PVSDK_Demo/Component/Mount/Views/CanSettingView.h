//
//  CanSettingView.h
//  PVSDK_Demo
//
//  Copyright © 2017 Layne. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM (NSUInteger, CanDownMenuType){
    canDownMenuTypeBPS,
    canDownMenuTypeMode,
};

@class CanSettingView;
@protocol CanSettingViewDelegate <NSObject>

- (void)canSettingView:(CanSettingView *)canView dropMenuType:(CanDownMenuType)type selectedCellNumber:(NSInteger)number;

@end

@interface CanSettingView : UIView

@property (nonatomic,weak)id <CanSettingViewDelegate>delegate;

@end

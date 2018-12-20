//
//  ChangeTextView.h
//  MVPresenter
//
//  Created by 柯浩然 on 2018/12/20.
//  Copyright © 2018 柯浩然. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ChangeTextView;
@protocol ChangeTextViewDelegate <NSObject>

- (void)changeTextViewDidClickButton;

@end
NS_ASSUME_NONNULL_BEGIN

@interface ChangeTextView : UIView
@property(nonatomic, weak) id<ChangeTextViewDelegate> delegate;
- (void)setName:(NSString *)name;
@end

NS_ASSUME_NONNULL_END

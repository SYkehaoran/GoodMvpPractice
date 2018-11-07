//
//  VansPresenter.h
//  MVPresenter
//
//  Created by 柯浩然 on 2018/11/6.
//  Copyright © 2018 柯浩然. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "VansModel.h"
NS_ASSUME_NONNULL_BEGIN
@protocol VansProtocol <NSObject>

- (void)changeName:(NSString *)name;

@end
@interface VansPresenter : NSObject
- (instancetype)initWithView:(id<VansProtocol>)view model:(VansModel *)model;
- (void)buttonClick;
@end

NS_ASSUME_NONNULL_END

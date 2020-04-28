//
//  WeakProxy.h
//  Memory
//
//  Created by kai on 2018/3/4.
//  Copyright © 2018年 kai. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface WeakProxy : NSProxy

@property (nonatomic, weak, readonly, nullable) id target;

- (nonnull instancetype)initWithTarget:(nonnull id)target;
+ (nonnull instancetype)proxyWithTarget:(nonnull id)target;

@end

NS_ASSUME_NONNULL_END

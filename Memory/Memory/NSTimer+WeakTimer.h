//
//  NSTimer+WeakTimer.h
//  Memory
//
//  Created by kai on 2018/3/4.
//  Copyright © 2018年 kai. All rights reserved.
//
#import <Foundation/Foundation.h>

@interface NSTimer (WeakTimer)

+ (NSTimer *)scheduledWeakTimerWithTimeInterval:(NSTimeInterval)interval
                                         target:(id)aTarget
                                       selector:(SEL)aSelector
                                       userInfo:(id)userInfo
                                        repeats:(BOOL)repeats;

@end

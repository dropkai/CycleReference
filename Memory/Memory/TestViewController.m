//
//  TestViewController.h
//  Memory
//
//  Created by kai on 2018/3/4.
//  Copyright © 2018年 kai. All rights reserved.
//

#import "TestViewController.h"
#import "NSTimer+WeakTimer.h"
#import "WeakProxy.h"
@interface TestViewController ()

@property (nonatomic, strong) NSTimer *timer;

@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor redColor];
    
    WeakProxy *weakProxy = [WeakProxy proxyWithTarget:self];
    self.timer = [NSTimer scheduledTimerWithTimeInterval:2 target:weakProxy selector:@selector(testRecycle) userInfo:nil repeats:YES];
//    self.timer = [NSTimer scheduledWeakTimerWithTimeInterval:2 target:self selector:@selector(testRecycle) userInfo:nil repeats:YES];
    
}
- (void)testRecycle{
    NSLog(@"我在运行，我在运行，我还在运行");
}
- (void)dealloc{
    [self.timer invalidate];
    NSLog(@"VC销毁了");
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

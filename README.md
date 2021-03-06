# CycleReference
NSTimer，CADisplayLink循环引用的解决办法

NSTimer的循环引用分析：
   
   NSTimer由于runloop对于NSTimer强引用，NSTimer又对target强引用，target对于VC强引用，VC对于NSTimer强引用，这样就产生一个循环引用问题，当页面退出，NSTimer不会释放。
   
   由于runloop常驻内存，无论是weak还是strong修饰，在NSTimer中都会重新生成一个新的强引用指针指向self，导致循环引用的。这时就需要一个第三方中间者来实现破除循环引用。

第一种方案：创建一个NSTimer的分类，指定一个中间者弱引用target和NSTimer，从而破除循环引用

第二种方案：是创建一个继承NSProxy的对象，弱引用target，利用消息转发机制实现定时器方法，解除循环引用。

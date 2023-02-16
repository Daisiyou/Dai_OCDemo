//
//  Person.m
//  Dai_OCDemo
//
//  Created by Dai on 2023/2/15.
//

#import "Person.h"
#import <objc/runtime.h>

@implementation Person


-(instancetype)init{
    self = [super init];
    if(self){
//        Method oldMethod = class_getInstanceMethod([self class], @selector(run));
//        Method swizzeledMethod = class_getInstanceMethod([self class], @selector(testResolveMethod));
//       BOOL didAdd = class_addMethod([self class], @selector(run), method_getImplementation(swizzeledMethod), method_getTypeEncoding(swizzeledMethod));
//        NSLog(@"did add %d", didAdd);
//        if(!didAdd){
//            method_exchangeImplementations(oldMethod, swizzeledMethod);
//        }else{
//            class_replaceMethod([self class], @selector(testResolveMethod), method_getImplementation(oldMethod), method_getTypeEncoding(swizzeledMethod));
//        }
    }
    return self;
}

//-(void)run{
//    NSLog(@"Person run");
//}

-(void)testResolveMethod{
    NSLog(@"testResolveMethod");
}

+ (BOOL)resolveInstanceMethod:(SEL)sel{
    if(sel == @selector(run)){
        Method newMethod = class_getInstanceMethod([self class], @selector(testResolveMethod));
        class_addMethod([self class], sel, class_getMethodImplementation([self class], method_getName(newMethod)), method_getTypeEncoding(newMethod));//"V@"
        return YES;
    }
    return [super resolveInstanceMethod: sel];
}

@end

//
//  Person2.m
//  Dai_OCDemo
//
//  Created by Dai on 2023/2/16.
//

#import "Person2.h"
#import "American.h"

@implementation Person2

+ (BOOL)resolveInstanceMethod:(SEL)sel{
    return NO;
}

-(id)forwardingTargetForSelector:(SEL)aSelector{
    return nil;
}

-(NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector{
    NSMethodSignature *signature = [super methodSignatureForSelector:aSelector];
    if(!signature){
        signature = [NSMethodSignature signatureWithObjCTypes:"v@:"];
    }
    return signature;
}

-(void)forwardInvocation:(NSInvocation *)anInvocation{
    SEL sel = anInvocation.selector;
    American *a = [[American alloc] init];
    if([a respondsToSelector:sel]){
        [anInvocation invokeWithTarget:a];
    }else{
        [self doesNotRecognizeSelector:sel];
    }
}

@end

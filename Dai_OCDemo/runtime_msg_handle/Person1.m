//
//  Person1.m
//  Dai_OCDemo
//
//  Created by Dai on 2023/2/16.
//

#import "Person1.h"
#import "American.h"

@implementation Person1

+(BOOL)resolveInstanceMethod:(SEL)sel{
    return NO;
}

- (id)forwardingTargetForSelector:(SEL)aSelector{
    if(aSelector == @selector(run)){
        return [[American alloc] init];
    }
    return [super forwardingTargetForSelector:aSelector];
}


@end

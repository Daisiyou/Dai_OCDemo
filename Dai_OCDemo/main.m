//
//  main.m
//  Dai_OCDemo
//
//  Created by Dai on 2023/2/15.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Person1.h"
#import "Person2.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [[Person alloc] init];
        [p run];
        
        Person1 *p1 = [[Person1 alloc] init];
        [p1 run];
        
        Person2 *p2 = [[Person2 alloc] init];
        [p2 run];
    }
    return 0;
}

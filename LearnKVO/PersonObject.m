//
//  PersonObject.m
//  LearnKVO
//
//  Created by kmd on 5/22/13.
//  Copyright (c) 2013 trendster. All rights reserved.
//

#import "PersonObject.h"

@implementation PersonObject

-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context{
    NSLog(@"inside person object observer ");
}
@end

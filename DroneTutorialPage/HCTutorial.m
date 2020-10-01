//
//  Tutorial.m
//  DroneTutorialPage
//
//  Created by JSH on 2020/9/30.
//  Copyright © 2020 JSH. All rights reserved.
//

#import "HCTutorial.h"

@implementation HCTutorial
- (instancetype)initWithDictionary:(NSDictionary *)dict
{
   self = [super init];
    if (self)
    {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}

@end

//
//  Tutorial.h
//  DroneTutorialPage
//
//  Created by JSH on 2020/9/30.
//  Copyright © 2020 JSH. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface HCTutorial : NSObject
@property (nonatomic, strong) NSString* imageURL;
@property (nonatomic, strong) NSString* id;
@property (nonatomic, strong) NSString* type;
@property (nonatomic, strong) NSString* thumbnail;
@property (nonatomic, strong) NSString* download;
@property (nonatomic, strong) NSString* create_time;
@property (nonatomic, strong) NSString* author;
@property (nonatomic, strong) NSString* link;
@property (nonatomic, strong) NSString* likes;
@property (nonatomic, strong) NSString* shares;
@property (nonatomic, strong) NSString* views;
@property (nonatomic, strong) NSString* authorInfo;
@property (nonatomic, strong) NSString* duration;
@property (nonatomic, strong) NSString* width;
@property (nonatomic, strong) NSString* height;
@property (nonatomic, strong) NSString* scene;
@property (nonatomic, strong) NSString* sort;
@property (nonatomic, strong) NSString* time_new;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
@end

NS_ASSUME_NONNULL_END

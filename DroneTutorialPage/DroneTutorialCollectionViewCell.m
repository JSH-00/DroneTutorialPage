//
//  DroneTutorialCollectionViewCell.m
//  DroneTutorialPage
//
//  Created by JSH on 2020/9/27.
//  Copyright © 2020 JSH. All rights reserved.
//

#import "DroneTutorialCollectionViewCell.h"

@implementation DroneTutorialCollectionViewCell
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        self.contentView.backgroundColor = [UIColor blueColor];
        self.contentView.layer.cornerRadius = 8;
        self.contentView.layer.masksToBounds = YES;
    }
    
    return self;
}
@end

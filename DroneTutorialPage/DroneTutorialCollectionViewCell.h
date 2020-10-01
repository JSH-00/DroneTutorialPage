//
//  DroneTutorialCollectionViewCell.h
//  DroneTutorialPage
//
//  Created by JSH on 2020/9/27.
//  Copyright © 2020 JSH. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HCTutorial.h"
NS_ASSUME_NONNULL_BEGIN

@interface DroneTutorialCollectionViewCell : UICollectionViewCell
@property (nonatomic, weak)UIImageView * thumbnailImage;
- (void)setConfig:(HCTutorial *)tutorial;
@end

NS_ASSUME_NONNULL_END

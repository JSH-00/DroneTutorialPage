//
//  DroneTutorialCollectionViewCell.h
//  DroneTutorialPage
//
//  Created by JSH on 2020/9/27.
//  Copyright © 2020 JSH. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HCTutorial.h"
#import <AVFoundation/AVFoundation.h>
#import <AVKit/AVKit.h>
NS_ASSUME_NONNULL_BEGIN

@interface DroneTutorialCollectionViewCell : UICollectionViewCell
@property (nonatomic, weak)UIImageView * thumbnailImage;
@property (nonatomic, weak)NSURL * webVideoUrl;
@property (nonatomic, strong)AVPlayer *avPlayer;//播放器对象
@property (nonatomic, strong)AVPlayerViewController *avPlayerVC;
- (void)setConfig:(HCTutorial *)tutorial;
@end

NS_ASSUME_NONNULL_END

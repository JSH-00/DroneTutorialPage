//
//  DroneTutorialCollectionViewController.m
//  DroneTutorialPage
//
//  Created by JSH on 2020/9/27.
//  Copyright © 2020 JSH. All rights reserved.
//

#import "DroneTutorialCollectionViewController.h"
#import "DroneTutorialCollectionViewCell.h"
#define fDeviceHeight ([UIScreen mainScreen].bounds.size.height)
#define fDeviceWidth ([UIScreen mainScreen].bounds.size.width)

@interface DroneTutorialCollectionViewController ()
@property (nonatomic ,strong) NSMutableArray * tutorialArray;
@property (nonatomic, strong) UICollectionView * tutorialCollectionView;
@property (nonatomic, strong) UICollectionView * collectionView;
@end


@implementation DroneTutorialCollectionViewController

static NSString * const reuseIdentifier = @"TutorialCell";

- (void)viewDidLoad {
    
    [super viewDidLoad];
    [self.view addSubview:self.tutorialCollectionView];
}

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
//    return self.tutorialArray.count;
    return 4;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [UICollectionViewCell new];
    cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"TcellID" forIndexPath:indexPath];
    return cell;
}
#pragma mark init tutorialCollectionView
- (UICollectionView *)tutorialCollectionView
{
    if (!_tutorialCollectionView)
    {
        UICollectionViewFlowLayout *flowLayout = [UICollectionViewFlowLayout new];
        flowLayout.itemSize = CGSizeMake(fDeviceWidth - 6, 203);
        flowLayout.minimumInteritemSpacing = 8;
        
        self.tutorialCollectionView = [[UICollectionView alloc]initWithFrame:CGRectMake(0,70, fDeviceWidth, fDeviceHeight) collectionViewLayout:flowLayout];
        [self.tutorialCollectionView registerClass:[DroneTutorialCollectionViewCell class] forCellWithReuseIdentifier:@"TcellID"];
        
        self.tutorialCollectionView.delegate = self;
        self.tutorialCollectionView.dataSource = self;
        self.tutorialCollectionView.backgroundColor = [UIColor blackColor];
        self.tutorialCollectionView.showsVerticalScrollIndicator = NO;
        self.tutorialCollectionView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        
    }
    return _tutorialCollectionView;
}
#pragma mark <UICollectionViewDelegate>

/*
 // Uncomment this method to specify if the specified item should be highlighted during tracking
 - (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
 return YES;
 }
 */

/*
 // Uncomment this method to specify if the specified item should be selected
 - (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
 return YES;
 }
 */

/*
 // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
 - (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
 return NO;
 }
 
 - (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
 return NO;
 }
 
 - (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
 
 }
 */
@end

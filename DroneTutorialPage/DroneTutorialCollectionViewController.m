//
//  DroneTutorialCollectionViewController.m
//  DroneTutorialPage
//
//  Created by JSH on 2020/9/27.
//  Copyright © 2020 JSH. All rights reserved.
//

#import "DroneTutorialCollectionViewController.h"
#import "DroneTutorialCollectionViewCell.h"
#import <AFNetworking.h>
#import "HCTutorial.h"
#define fDeviceHeight ([UIScreen mainScreen].bounds.size.height)
#define fDeviceWidth ([UIScreen mainScreen].bounds.size.width)

@interface DroneTutorialCollectionViewController ()
@property (nonatomic ,strong) NSMutableArray * tutorialArray;
@property (nonatomic, strong) UICollectionView * tutorialCollectionView;
@end

@implementation DroneTutorialCollectionViewController
static NSString * const reuseIdentifier = @"TutorialCell";

- (void)viewDidLoad {
    
    [super viewDidLoad];
    [self.view addSubview:self.tutorialCollectionView];
    [self reloadTutorialList];
}

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.tutorialArray.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [UICollectionViewCell new];
    cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"TcellID" forIndexPath:indexPath];
    DroneTutorialCollectionViewCell * tutorialCell = [DroneTutorialCollectionViewCell new];
    tutorialCell = (DroneTutorialCollectionViewCell *)cell;
    [tutorialCell setConfig:[self.tutorialArray objectAtIndex:indexPath.row]];
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
        
        self.tutorialCollectionView = [[UICollectionView alloc]initWithFrame:CGRectMake(0,70, fDeviceWidth, fDeviceHeight - 70) collectionViewLayout:flowLayout];
        [self.tutorialCollectionView registerClass:[DroneTutorialCollectionViewCell class] forCellWithReuseIdentifier:@"TcellID"];
        
        self.tutorialCollectionView.delegate = self;
        self.tutorialCollectionView.dataSource = self;
        self.tutorialCollectionView.backgroundColor = [UIColor blackColor];
        self.tutorialCollectionView.showsVerticalScrollIndicator = NO;
        self.tutorialCollectionView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        
    }
    return _tutorialCollectionView;
}

#pragma mark reload JSON 数据
- (void)reloadTutorialList
{
    self.tutorialArray = [NSMutableArray new];
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.responseSerializer = [AFJSONResponseSerializer serializer];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"]; //指定接收信号为image/png
    [manager GET:@"https://zerozerorobotics.com/api/v1/showcase/no-scene.json?skip=0&take=9" parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSMutableArray * tutorialDictionaryArray = responseObject;
        for(int i = 0; i < tutorialDictionaryArray.count; i++)
        {
            HCTutorial * tutorial = [[HCTutorial alloc]initWithDictionary:[tutorialDictionaryArray objectAtIndex:i]];
            [self.tutorialArray addObject:tutorial];
        }
        NSLog(@"请求成功");
        [self.tutorialCollectionView reloadData];

    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"请求失败--%@",error);
    }];

    [self.tutorialCollectionView reloadData];
}
@end

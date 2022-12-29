//
//  PhotoViewController.h
//  2.网易云demo
//
//  Created by 翟旭博 on 2022/7/21.
//

#import "ViewController.h"

NS_ASSUME_NONNULL_BEGIN

@protocol PhotoDelegate <NSObject>

- (void)changestr:(NSString *) str  ;

@end

@interface PhotoViewController : ViewController

@property (assign, nonatomic) id<PhotoDelegate> delegate;

@end

NS_ASSUME_NONNULL_END

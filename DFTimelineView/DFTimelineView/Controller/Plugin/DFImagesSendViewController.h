//
//  DFImagesSendViewController.h
//  DFTimelineView
//
//  Created by Allen Zhong on 16/2/15.
//  Copyright © 2016年 Datafans, Inc. All rights reserved.
//

#import <DFCommon/DFCommon.h>
#import <SKTagView.h>

typedef enum : NSUInteger {
    DFImagesSendViewControllerTypeNone,
    DFImagesSendViewControllerTypeTopic,
} DFImagesSendViewControllerType;

@protocol DFImagesSendViewControllerDelegate <NSObject>

@optional

-(void) onSendTextImage:(NSString *) text images:(NSArray *)images;
-(void) onSendTextImage:(NSString *) text images:(NSArray *)images tags:(NSArray<NSString *> *)tags;
- (DFImagesSendViewControllerType)imagesSendViewControllerType;
//获取标题（发布话题秀
- (NSString *)topicTitle;
//获取个人秀Tag（发布个人秀
- (NSArray<NSString *> *)tagsArray;
//获取SKTag样式
- (SKTag *)getTagWithText:(NSString *)text;

@end
@interface DFImagesSendViewController : DFBaseViewController

@property (nonatomic, weak) id<DFImagesSendViewControllerDelegate> delegate;

- (instancetype)initWithImages:(NSArray *) images;

@end

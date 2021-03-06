//
//  SDTimeLineTableHeaderView.m
//  GSD_WeiXin(wechat)
//
//  Created by gsd on 16/2/25.
//  Copyright © 2016年 GSD. All rights reserved.
//

/*
 
 *********************************************************************************
 *
 * GSD_WeiXin
 *
 * QQ交流群: 362419100(2群) 459274049（1群已满）
 * Email : gsdios@126.com
 * GitHub: https://github.com/gsdios/GSD_WeiXin
 * 新浪微博:GSD_iOS
 *
 * 此“高仿微信”用到了很高效方便的自动布局库SDAutoLayout（一行代码搞定自动布局）
 * SDAutoLayout地址：https://github.com/gsdios/SDAutoLayout
 * SDAutoLayout视频教程：http://www.letv.com/ptv/vplay/24038772.html
 * SDAutoLayout用法示例：https://github.com/gsdios/SDAutoLayout/blob/master/README.md
 *
 *********************************************************************************
 
 */

#import "SDTimeLineTableHeaderView.h"

#import "UIView+SDAutoLayout.h"

@implementation SDTimeLineTableHeaderView

{
    UIImageView *_backgroundImageView;
    UIImageView *_iconView;
    UILabel *_nameLabel;
    UITextField *_textField;
    UIStackView *_stackView;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self setup];
        [self setupStackView];
    }
    return self;
}

- (void)setup
{
    
//    _backgroundImageView = [UIImageView new];
//    _backgroundImageView.image = [UIImage imageNamed:@"pbg.jpg"];
//    [self addSubview:_backgroundImageView];
    
//    _iconView = [UIImageView new];
//    _iconView.image = [UIImage imageNamed:@"picon.jpg"];
//    _iconView.layer.borderColor = [UIColor whiteColor].CGColor;
//    _iconView.layer.borderWidth = 3;
//    [self addSubview:_iconView];
//
//    _backgroundImageView.sd_layout.spaceToSuperView(UIEdgeInsetsMake(-60, 0, 40, 0));
//
//    _iconView.sd_layout
//    .widthIs(70)
//    .heightIs(70)
//    .rightSpaceToView(self, 15)
//    .bottomSpaceToView(self, 20);
    
    _nameLabel = [UILabel new];
    _nameLabel.text = @"请您输入问题";
    _nameLabel.textColor = [UIColor grayColor];
    _nameLabel.textAlignment = NSTextAlignmentRight;
    _nameLabel.font = [UIFont boldSystemFontOfSize:15];
    [self addSubview:_nameLabel];
    
    _textField = [UITextField new];
    _textField.placeholder = @"请您输入问题";
    _textField.textAlignment = NSTextAlignmentNatural;
    _textField.borderStyle = UITextBorderStyleRoundedRect;
//    _textField.layer.borderWidth = 1;
//    _textField.layer.borderColor = [UIColor blackColor].CGColor;
    [self addSubview:_textField];
    
    
    _stackView = [UIStackView new];
    _stackView.backgroundColor = [UIColor lightGrayColor];
    _stackView.axis = UILayoutConstraintAxisVertical;
    _stackView.distribution = UIStackViewDistributionFillEqually;
    _stackView.spacing = 1;
    _stackView.layer.masksToBounds = YES;
    _stackView.layer.cornerRadius = 5;
    _stackView.layer.borderColor = [UIColor lightGrayColor].CGColor;
    _stackView.layer.borderWidth = 1;
    [self addSubview:_stackView];
    
    _nameLabel.tag = 1000;
    [_nameLabel setSingleLineAutoResizeWithMaxWidth:200];
    _nameLabel.sd_layout
    .leftSpaceToView(self, 20)
    .topSpaceToView(self, 20)
    .heightIs(20);
    
    _textField.sd_layout
    .topSpaceToView(_nameLabel, 10)
    .leftSpaceToView(self, 20)
    .rightSpaceToView(self, 20)
    .heightIs(44);
    
    _stackView.sd_layout
    .topSpaceToView(_textField, 10)
    .leftSpaceToView(self, 20)
    .rightSpaceToView(self, 20)
    .heightIs(100);
}

-(void)setupStackView
{
    NSArray *labelNames = @[@"领域",@"阈值",@"数量"];
    NSArray *labelValues = @[@"维修",@"0.5",@"3"];
    
    for (NSInteger idx = 0; idx < 3; idx++) {
        UIView *view = [UIView new];
        [_stackView addArrangedSubview:view];

        UILabel *leftLabel = [[UILabel alloc] init];
        leftLabel.backgroundColor = [UIColor whiteColor];
        leftLabel.text = [labelNames objectAtIndex:idx];
        leftLabel.textAlignment = NSTextAlignmentCenter;
        [view addSubview:leftLabel];

        UILabel *rightLabel = [[UILabel alloc] init];
        rightLabel.backgroundColor = [UIColor whiteColor];
        rightLabel.text = [labelValues objectAtIndex:idx];
        rightLabel.textAlignment = NSTextAlignmentCenter;
        rightLabel.textColor = [UIColor systemGrayColor];
        [view addSubview:rightLabel];
        
        UIImageView *chooseIcon = [[UIImageView alloc] init];
        chooseIcon.image = [UIImage imageNamed:@"下箭头"];
        [view addSubview:chooseIcon];
        
        leftLabel.sd_layout
        .topEqualToView(view)
        .leftEqualToView(view)
        .bottomEqualToView(view)
        .widthIs(80);
        
        rightLabel.sd_layout
        .topEqualToView(view)
        .rightEqualToView(view)
        .bottomEqualToView(view)
        .leftSpaceToView(leftLabel, 1);
        
        chooseIcon.sd_layout
        .rightSpaceToView(view, 10)
        .centerYEqualToView(view)
        .widthIs(14)
        .heightIs(14);
    }
    
}

@end

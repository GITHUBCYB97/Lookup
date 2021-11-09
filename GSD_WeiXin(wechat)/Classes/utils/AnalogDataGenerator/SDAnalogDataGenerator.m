//
//  SDAnalogDataGenerator.m
//  GSD_WeiXin(wechat)
//
//  Created by aier on 16/2/10.
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

#import "SDAnalogDataGenerator.h"

static NSArray *namesArray;
static NSArray *iconNamesArray;
static NSArray *messagesArray;

@implementation SDAnalogDataGenerator

+ (NSString *)randomName
{
    int randomIndex = arc4random_uniform((int)[self names].count);
    return [self names][randomIndex];
}

+ (NSString *)randomIconImageName
{
    int randomIndex = arc4random_uniform((int)[self iconNames].count);
    return iconNamesArray[randomIndex];
}

+ (NSString *)randomMessage
{
    int randomIndex = arc4random_uniform((int)[self messages].count);
    return messagesArray[randomIndex];
}

+ (NSArray *)names
{
    if (!namesArray) {
        namesArray = @[@"维修记录2021.10.15",
                       @"维修记录2020.9.3",
                       @"维修记录2019.2.11",
                       @"维修记录2018.1.5",
                       @"维修记录2017.3.7",
                       @"维修记录2016.4.10",
                       @"维修记录2015.5.15",
                       @"维修记录2014.6.20",
                       @"维修记录2013.7.31",
                       ];
    }
    return namesArray;
}

+ (NSArray *)iconNames
{
    if (!iconNamesArray) {
        NSMutableArray *temp = [NSMutableArray new];
        for (int i = 1; i < 9; i++) {
            NSString *iconName = [NSString stringWithFormat:@"icon%d.jpg", i];
            [temp addObject:iconName];
        }
        iconNamesArray = [temp copy];
    }
    return iconNamesArray;
}

+ (NSArray *)messages
{
    if (!messagesArray) {
        messagesArray = @[@"2KPK10AA061|2KPK10BB001出口进压空阀,目视检查波纹管表面无变形、裂纹,目视检查阀芯密封面无擦伤、冲蚀，且接触线完整",
                          @"工作负责人领取PW票，现场确认设备KKS编码2KPK10AA061/062，按照程序PMS-X-VSJ00-040对阀门进行解体,对各个零部件进行检修与清洗,",
                          @"密封面蓝油试验检查合格，回装阀门,手动开关阀门，操作自如无卡涩,工作完成，清理现场，归还工作票，填写完工报告。",
                          @"1JNG45AA601|1JNG40去主回路热段管线逆止阀|密封面有轻微划痕|阀门内漏|现场确认KKS码，按程序解体阀门，清洗各零部件无异常并润滑紧固件，研磨阀芯、阀座蓝油试验合格，清洁度检查合格，更换新密封件，回装阀门，清理现场。",
                          @"40PGB12CY002|40PGB12AP001三号轴承振动传感器|探头损坏。|40PGB12CY002闪发振动大于4.5mm/s报警。|措施：更换新的探头。结果：设备恢复正常。",
                          @"1PAC22AA302|1PAC22CP501压力表一次阀|阀芯腐蚀，卡涩。|1PAC22AA302阀门卡涩处理|拆除损坏阀门，更换同型号阀门，动作开关灵活无卡涩。",
                          @"1MAA03AA140|汽轮机3号高压主汽门|扇形连接件在门轴齿型块上的位置偏左或者偏右|1MAA03AA140阀门可移动部件连杆与阀门基座接触|使用手锤配合铜棒敲击扇形连接件，将扇形连接件的位置向门轴端盖侧敲击，使1MAA03AA140拉杆处于基座孔中心位置",
                          @"1JNG50AA602|1JNG50安注管线逆止阀|N/A|N/A|现场确认设备KKS码，按程序要求解体阀门，检查各部件完好，研磨阀芯阀座，蓝油试验及清洁度检查合格，阀芯活动灵活，回装阀门,清理现场，完工结票。",
                          ];
    }
    return messagesArray;
}

@end

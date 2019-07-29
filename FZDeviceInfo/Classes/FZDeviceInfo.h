//
//  FZDeviceInfo.h
//  FZDeviceInfo
//
//  Created by 吴福增 on 2019/7/29.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface FZDeviceInfo : NSObject

/**
 * 当前设备类型
 * iPhone / iPad
 */
+(NSString *)model;

/**
 * 手机型号
 * iPhon5s / iPhone6s / iPhone 7 Plus /....
 */
+(NSString *)type;

/**
 * 机器类型
 * iPhone10,3 / iPhone10,5 / iPhone10,6
 */
+(NSString *)machine;

/**
 * 网络节点名称
 * iPhone
 */
+(NSString *)networkNodeName;

/**
 * 关于本机名称
 * <自定义>
 */
+(NSString *)deviceName;

/**
 * 得到当前系统名称
 * iOS
 */
+(NSString *)systemName;

/**
 * 得到当前系统版本
 * 12.0.1
 */
+(NSString *)systemVersion;

/** 是否支持多任务  */
+ (BOOL)multitaskingSupported;

/**
 * 得到当前设备独一标识符
 * 210A072A-FDD5-424A-B5F2-77E65F20D82A
 */
+(NSString *)UUID ;

/**
 * 内核系统名称
 * Darwin
 */
+(NSString *)kernelSysname;

/**
 * 设备XNU内核版本号
 * 18.0.0
 */
+(NSString *)kernelVersion;

/**
 * 内核构建描述
 * Darwin Kernel Version 18.0.0: Tue Aug 14 22:07:17 PDT 2018;
 * root:xnu-4903.202.2~1/RELEASE_ARM64_T8010
 */
+(NSString *)kernelBuildDescription;

/** 核数 */
+(NSInteger)nuclearCount;

/** 活跃的核数 */
+(NSInteger)activeNuclearCount;


@end

NS_ASSUME_NONNULL_END

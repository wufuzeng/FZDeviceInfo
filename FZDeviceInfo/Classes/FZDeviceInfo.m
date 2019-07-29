//
//  FZDeviceInfo.m
//  FZDeviceInfo
//
//  Created by 吴福增 on 2019/7/29.
//

#import "FZDeviceInfo.h"
#import <sys/utsname.h> //设备型号
#import <UIkit/UIDevice.h>


@implementation FZDeviceInfo


/**
 * 当前设备类型
 * iPhone / iPad
 */
+(NSString *)model{
    return [UIDevice currentDevice].model;
}

/**
 * 手机型号
 * iPhon5s / iPhone6s / iPhone 7 Plus /....
 */
+(NSString *)type{
    return [self typeFormattedWithMachine:[self machine]];
}

/**
 * 机器类型
 * iPhone10,3 / iPhone10,5 / iPhone10,6
 */
+(NSString *)machine{
    struct utsname systemInfo;
    uname(&systemInfo);
    NSString *machine = [NSString stringWithCString:systemInfo.machine  encoding:NSUTF8StringEncoding];
    return machine;
}

/**
 * 网络节点名称
 * iPhone
 */
+(NSString *)networkNodeName {
    struct utsname systemInfo;
    uname(&systemInfo);
    NSString * nodename = [NSString stringWithCString:systemInfo.nodename encoding:NSUTF8StringEncoding];
    return nodename;
}

/**
 * 关于本机名称
 * <自定义>
 */
+(NSString *)deviceName {
    return [UIDevice currentDevice].name;
}

/**
 * 得到当前系统名称
 * iOS
 */
+(NSString *)systemName {
    return [UIDevice currentDevice].systemName;
}

/**
 * 得到当前系统版本
 * 12.0.1
 */
+(NSString *)systemVersion {
    return [UIDevice currentDevice].systemVersion;
}

/** 是否支持多任务  */
+(BOOL)multitaskingSupported {
    return [UIDevice currentDevice].multitaskingSupported;
}

/**
 * 得到当前设备独一标识符
 * 210A072A-FDD5-424A-B5F2-77E65F20D82A
 */
+(NSString *)UUID {
    return [[UIDevice currentDevice].identifierForVendor UUIDString];
}

/**
 * 内核系统名称
 * Darwin
 */
+(NSString *)kernelSysname {
    struct utsname systemInfo;
    uname(&systemInfo);
    NSString * sysname = [NSString stringWithCString:systemInfo.sysname  encoding:NSUTF8StringEncoding];
    return sysname;
}

/**
 * 设备XNU内核版本号
 * 18.0.0
 */
+(NSString *)kernelVersion {
    struct utsname systemInfo;
    uname(&systemInfo);
    NSString *version = [NSString stringWithCString:systemInfo.release  encoding:NSUTF8StringEncoding];
    return version;
}

/**
 * 内核构建描述
 * Darwin Kernel Version 18.0.0: Tue Aug 14 22:07:17 PDT 2018;
 * root:xnu-4903.202.2~1/RELEASE_ARM64_T8010
 */
+(NSString *)kernelBuildDescription{
    struct utsname systemInfo;
    uname(&systemInfo);
    NSString *description = [NSString stringWithCString:systemInfo.version  encoding:NSUTF8StringEncoding];
    return description;
}

/** 核数 */
+(NSInteger)nuclearCount {
    return NSProcessInfo.processInfo.processorCount;
}

/**  活跃的核数 */
+(NSInteger)activeNuclearCount {
    return NSProcessInfo.processInfo.activeProcessorCount;
}

#pragma mark -- Tool Func ---

/** 手机型号格式化 */
+(NSString *)typeFormattedWithMachine:(NSString *)machine{
    if ([machine isEqualToString:@"iPhone1,1"]) return @"iPhone 2G";
    if ([machine isEqualToString:@"iPhone1,2"]) return @"iPhone 3G";
    if ([machine isEqualToString:@"iPhone2,1"]) return @"iPhone 3GS";
    if ([machine isEqualToString:@"iPhone3,1"]) return @"iPhone 4";
    if ([machine isEqualToString:@"iPhone3,2"]) return @"iPhone 4";
    if ([machine isEqualToString:@"iPhone3,3"]) return @"iPhone 4";
    if ([machine isEqualToString:@"iPhone4,1"]) return @"iPhone 4S";
    if ([machine isEqualToString:@"iPhone5,1"]) return @"iPhone 5";
    if ([machine isEqualToString:@"iPhone5,2"]) return @"iPhone 5";
    if ([machine isEqualToString:@"iPhone5,3"]) return @"iPhone 5c";
    if ([machine isEqualToString:@"iPhone5,4"]) return @"iPhone 5c";
    if ([machine isEqualToString:@"iPhone6,1"]) return @"iPhone 5s";
    if ([machine isEqualToString:@"iPhone6,2"]) return @"iPhone 5s";
    if ([machine isEqualToString:@"iPhone7,1"]) return @"iPhone 6 Plus";
    if ([machine isEqualToString:@"iPhone7,2"]) return @"iPhone 6";
    if ([machine isEqualToString:@"iPhone8,1"]) return @"iPhone 6s";
    if ([machine isEqualToString:@"iPhone8,2"]) return @"iPhone 6s Plus";
    if ([machine isEqualToString:@"iPhone9,1"]) return @"iPhone 7";
    if ([machine isEqualToString:@"iPhone9,3"]) return @"iPhone 7";
    if ([machine isEqualToString:@"iPhone9,2"]) return @"iPhone 7 Plus";
    if ([machine isEqualToString:@"iPhone9,4"]) return @"iPhone 7 Plus";
    if ([machine isEqualToString:@"iPhone10,1"]) return @"iPhone 8";
    if ([machine isEqualToString:@"iPhone10,4"]) return @"iPhone 8";
    if ([machine isEqualToString:@"iPhone10,2"]) return @"iPhone 8 Plus";
    if ([machine isEqualToString:@"iPhone10,5"]) return @"iPhone 8 Plus";
    if ([machine isEqualToString:@"iPhone10,3"]) return @"iPhone X";
    if ([machine isEqualToString:@"iPhone10,6"]) return @"iPhone X";
    if ([machine isEqualToString:@"iPhone11,2"]) return @"iPhone XS";
    if ([machine isEqualToString:@"iPhone11,4"]) return @"iPhone XS Max";
    if ([machine isEqualToString:@"iPhone11,6"]) return @"iPhone XS Max";
    if ([machine isEqualToString:@"iPhone11,8"]) return @"iPhone XR";
    
    if ([machine isEqualToString:@"iPod1,1"]) return @"iPod Touch 1G";
    if ([machine isEqualToString:@"iPod2,1"]) return @"iPod Touch 2G";
    if ([machine isEqualToString:@"iPod3,1"]) return @"iPod Touch 3G";
    if ([machine isEqualToString:@"iPod4,1"]) return @"iPod Touch 4G";
    if ([machine isEqualToString:@"iPod5,1"]) return @"iPod Touch 5G";
    
    if ([machine isEqualToString:@"iPad1,1"]) return @"iPad 1G";
    
    if ([machine isEqualToString:@"iPad2,1"]) return @"iPad 2";
    if ([machine isEqualToString:@"iPad2,2"]) return @"iPad 2";
    if ([machine isEqualToString:@"iPad2,3"]) return @"iPad 2";
    if ([machine isEqualToString:@"iPad2,4"]) return @"iPad 2";
    
    if ([machine isEqualToString:@"iPad2,5"]) return @"iPad Mini 1G";
    if ([machine isEqualToString:@"iPad2,6"]) return @"iPad Mini 1G";
    if ([machine isEqualToString:@"iPad2,7"]) return @"iPad Mini 1G";
    
    if ([machine isEqualToString:@"iPad3,1"]) return @"iPad 3";
    if ([machine isEqualToString:@"iPad3,2"]) return @"iPad 3";
    if ([machine isEqualToString:@"iPad3,3"]) return @"iPad 3";
    if ([machine isEqualToString:@"iPad3,4"]) return @"iPad 4";
    if ([machine isEqualToString:@"iPad3,5"]) return @"iPad 4";
    if ([machine isEqualToString:@"iPad3,6"]) return @"iPad 4";
    
    if ([machine isEqualToString:@"iPad4,1"]) return @"iPad Air";
    if ([machine isEqualToString:@"iPad4,2"]) return @"iPad Air";
    if ([machine isEqualToString:@"iPad4,3"]) return @"iPad Air";
    
    if ([machine isEqualToString:@"iPad4,4"]) return @"iPad Mini 2G";
    if ([machine isEqualToString:@"iPad4,5"]) return @"iPad Mini 2G";
    if ([machine isEqualToString:@"iPad4,6"]) return @"iPad Mini 2G";
    
    if ([machine isEqualToString:@"i386"]) return @"iPhone Simulator";
    if ([machine isEqualToString:@"x86_64"]) return @"iPhone Simulator";
    
    return machine;
}


@end

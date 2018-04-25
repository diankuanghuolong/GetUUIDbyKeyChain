//
//  Custom-UUIDWithKeyChain.m
//  HaiLookGif
//
//  Created by Ios_Developer on 2018/4/25.
//  Copyright © 2018年 hai. All rights reserved.
//

#import "CustomGetUUID.h"
#import"KeyChainStore.h"

#define  KEY_USERNAME_PASSWORD @"com.hai.GetUUIDbyKeyChain.usernamepassword"
#define  KEY_USERNAME @"com.hai.GetUUIDbyKeyChain.username"
#define  KEY_PASSWORD @"com.hai.GetUUIDbyKeyChain.password"
/*
 KEY_USERNAME_PASSWORD @"com.company.app.usernamepassword" ---用于keychain保存UUID的标识
 KEY_USERNAME @"com.hai.GetUUIDbyKeyChain.username" ----------方便以后获取username信息
 KEY_PASSWORD @"com.hai.GetUUIDbyKeyChain.password" ----------方便以后获取password信息
 */

@implementation CustomGetUUID

+(NSString *)getUUID
{
    NSString * strUUID = (NSString *)[KeyChainStore load:KEY_USERNAME_PASSWORD];
    
    //首次执行该方法时，uuid为空
    if ([strUUID isEqualToString:@""] || !strUUID)
    {
        //生成一个uuid的方法
        CFUUIDRef uuidRef = CFUUIDCreate(kCFAllocatorDefault);
        
        strUUID = (NSString *)CFBridgingRelease(CFUUIDCreateString (kCFAllocatorDefault,uuidRef));
        
        //将该uuid保存到keychain
        [KeyChainStore save:KEY_USERNAME_PASSWORD data:strUUID];
        
    }
    return strUUID;
}

@end

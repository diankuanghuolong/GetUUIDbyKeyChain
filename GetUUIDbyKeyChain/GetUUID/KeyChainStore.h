//
//  KeyChainStore.h
//  HaiLookGif
//
//  Created by Ios_Developer on 2018/4/25.
//  Copyright © 2018年 hai. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KeyChainStore : NSObject

+ (void)save:(NSString *)service data:(id)data;
+ (id)load:(NSString *)service;
+ (void)deleteKeyData:(NSString *)service;
@end

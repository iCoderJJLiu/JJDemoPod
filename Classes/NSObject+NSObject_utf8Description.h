//
//  NSObject+NSObject_utf8Description.h
//  Pods
//
//  Created by JJ.Liu's mbp on 2020/12/16.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (NSObject_utf8Description)

/**
 把字典转成UTF8格式 主要用户DEBUG
 */
- (NSString *)utf8Description;
@end

NS_ASSUME_NONNULL_END

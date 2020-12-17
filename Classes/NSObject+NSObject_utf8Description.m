//
//  NSObject+NSObject_utf8Description.m
//  Pods
//
//  Created by JJ.Liu's mbp on 2020/12/16.
//

#import "NSObject+NSObject_utf8Description.h"

@implementation NSObject (NSObject_utf8Description)
/**
 把字典转成UTF8格式 主要用户DEBUG
 */
+ (NSString *)utf8Description{
    if(self){
        if ([self isKindOfClass:[NSDictionary class]] || [self isKindOfClass:[NSArray class]]){
            NSData *jsonData=[NSJSONSerialization dataWithJSONObject:self options:NSJSONWritingPrettyPrinted error:nil];
            NSString *jsonStr = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
            return jsonStr;
        } else if ([self isKindOfClass:[NSObject class]]){
            NSObject *paraObj = self;
            return [paraObj debugDescription];
        }
        return nil;
    }
    
    
    
    return nil;
}@end

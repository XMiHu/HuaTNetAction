//
//  HuaTNetTool.h
//  HuaTNetAction
//
//  Created by MiHu on 2018/4/24.
//

#import <Foundation/Foundation.h>

@interface HuaTNetTool : NSObject


/**
 get方法

 @param urlStr url
 @param param 参数
 @param successRes 成功回调
 @param errorRes 错误回调
 */
+(void)getDataUrl:(NSString *)urlStr param:(NSMutableDictionary *)param success:(void(^)(NSMutableDictionary * datas))successRes error:(void(^)(NSError * err))errorRes;

/**
 post方法
 
 @param urlStr url
 @param param 参数
 @param successRes 成功回调
 @param errorRes 错误回调
 */
+(void)postDataUrl:(NSString *)urlStr param:(NSMutableDictionary *)param success:(void(^)(NSMutableDictionary * datas))successRes error:(void(^)(NSError * err))errorRes;


@end

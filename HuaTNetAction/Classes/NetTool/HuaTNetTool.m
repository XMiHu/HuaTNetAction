//
//  HuaTNetTool.m
//  HuaTNetAction
//
//  Created by MiHu on 2018/4/24.
//

#import "HuaTNetTool.h"

@implementation HuaTNetTool

/**
 get方法
 
 @param urlStr url
 @param param 参数
 @param successRes 成功回调
 @param errorRes 错误回调
 */
+(void)getDataUrl:(NSString *)urlStr param:(NSMutableDictionary *)param success:(void(^)(NSMutableDictionary * datas))successRes error:(void(^)(NSError * err))errorRes{
    
    
    NSURL * Url = [NSURL URLWithString:urlStr];
    NSData * data = [NSJSONSerialization dataWithJSONObject:param options:(NSJSONWritingPrettyPrinted) error:nil];
    NSMutableURLRequest * request  = [NSMutableURLRequest requestWithURL:Url];
    request.HTTPMethod = @"GET";
    request.HTTPBody = data;
    
    NSURLSessionDataTask * task = [[NSURLSession sharedSession] dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        if(!error)
        {
            NSMutableDictionary * dataDict = [NSJSONSerialization JSONObjectWithData:data options:(NSJSONReadingMutableLeaves) error:nil];
            successRes(dataDict);
        }else{
            
            errorRes(error);
        }
    }];
    [task resume];
}


/**
 post方法
 
 @param urlStr url
 @param param 参数
 @param successRes 成功回调
 @param errorRes 错误回调
 */
+(void)postDataUrl:(NSString *)urlStr param:(NSMutableDictionary *)param success:(void(^)(NSMutableDictionary * datas))successRes error:(void(^)(NSError * err))errorRes{
    
    NSURL * Url = [NSURL URLWithString:urlStr];
    NSData * data = [NSJSONSerialization dataWithJSONObject:param options:(NSJSONWritingPrettyPrinted) error:nil];
    NSMutableURLRequest * request  = [NSMutableURLRequest requestWithURL:Url];
    request.HTTPMethod = @"POST";
    request.HTTPBody = data;
    
    NSURLSessionDataTask * task = [[NSURLSession sharedSession] dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        if(!error)
        {
            NSMutableDictionary * dataDict = [NSJSONSerialization JSONObjectWithData:data options:(NSJSONReadingMutableLeaves) error:nil];
            successRes(dataDict);
        }else{
            
            errorRes(error);
        }
    }];
    [task resume];
    
}
@end















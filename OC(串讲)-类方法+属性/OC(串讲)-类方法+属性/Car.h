//
//  Car.h
//  OC(串讲)-类方法+属性
//
//  Created by qingyun on 16/4/15.
//  Copyright © 2016年 QingYun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject
//{
//    NSString *_carName;
//    double _carPrice;
//}
//setter
-(void)setCarName:(NSString *)name andPrice:(double)price;//多参
////getter
//-(NSString *)carName;
//-(double)carPrice;

//属性 @property
@property(copy,nonatomic)NSString *carName;
@property(assign,nonatomic)double carPrice;

-(instancetype)initWithName:(NSString *)name andPrice:(double)price;

+(void)play;
+(instancetype)instance;
+(instancetype)instanceWithName:(NSString *)name andPrice:(double)price;
@end

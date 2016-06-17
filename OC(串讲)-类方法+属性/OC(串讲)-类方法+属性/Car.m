//
//  Car.m
//  OC(串讲)-类方法+属性
//
//  Created by qingyun on 16/4/15.
//  Copyright © 2016年 QingYun. All rights reserved.
//

#import "Car.h"

@implementation Car
//@synthesize carName=_carName;
-(void)setCarName:(NSString *)name andPrice:(double)price
{
    _carName=name; //self.carName=name;会调用setter方法
    _carPrice=price;
}
//-(void)setCarName:(NSString *)carName
//{
//    _carName=carName;//self.carName=carName  会死循环
//}
//-(void)setCarPrice:(double)carPrice
//{
//    _carPrice=carPrice;
//}

//-(NSString *)carName
//{
   // return _carName;
 //   return self.carName;//会调用getter方法 死循环
//}
//-(double)carPrice
//{
//    return _carPrice;
//}
//重写 description 当用%@打印对象的时候自动调用此方法
-(NSString *)description
{
    return [NSString stringWithFormat:@"%@,%g",_carName,_carPrice];
}
//自定义构造函数
-(instancetype)initWithName:(NSString *)name andPrice:(double)price
{
    if (self=[super init])
    {
        _carName=name;
        _carPrice=price;
    }
    return self;
}

//类方法
+(void)play
{
    NSLog(@"Person play...");
}
+(instancetype)instance
{
    Car *c=[Car new];
    return c;
}
+(instancetype)instanceWithName:(NSString *)name andPrice:(double)price
{
    //在类方法中，无法直接使用 成员变量，-方法！
//    //method 1
//    Car *c=[Car new];
//    [c setCarName:name andPrice:price];
//    return c;
//    //method2
//    Car *c2=[self instance];
//    [c2 setCarName:name andPrice:price];
//    return c2;
    //method 3
    Car *c=[[Car alloc] initWithName:name andPrice:price];
    return c;
}
@end

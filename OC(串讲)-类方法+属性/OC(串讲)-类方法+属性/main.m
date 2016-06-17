//
//  main.m
//  OC(串讲)-类方法+属性
//
//  Created by qingyun on 16/4/15.
//  Copyright © 2016年 QingYun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //初始化
        Car *c1=[Car new];
        //设置值setter
        [c1 setCarName:@"大众 " andPrice:160000];
        //打印值 getter
        NSLog(@"%@,%g",[c1 carName],[c1 carPrice]);
        //用%@打印
        NSLog(@"%@",c1);
        
        [Car play];
        Car *c2=[Car instance];
        [c2 setCarName:@"丰田" andPrice:300000];
        NSLog(@"%@",c2);
        
        //构造函数的使用
        Car *c3=[[Car alloc] initWithName:@"劳斯莱斯" andPrice:1000000];
        NSLog(@"%@",c3);
        Car *c4=[Car instanceWithName:@"本田" andPrice:230000];
        NSLog(@"%@",c4);
        
        //属性的使用
        Car *c5=[Car new];
        [c5 setCarName:@"宝马"];
        c5.carPrice=500000;
        NSLog(@"%@,%g",[c5 carName],c5.carPrice);
    }
    return 0;
}

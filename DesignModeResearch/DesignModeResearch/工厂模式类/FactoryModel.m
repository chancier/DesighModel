//
//  FactoryModel.m
//  DesignModeResearch
//
//  Created by chen on 14-11-28.
//  Copyright (c) 2014年 chen. All rights reserved.
//

#import "FactoryModel.h"

@implementation FactoryModel

-(instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

+(SubClassFirst *)createFirst
{
    SubClassFirst *first=[[SubClassFirst alloc]init];
    
    first.sthString=@"plachor";
    
    return first;
}

+(SubClassSecond *)createSecond
{
    SubClassSecond *second=[[SubClassSecond alloc]init];
    return second;
}

@end

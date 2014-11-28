//
//  SecondModel.m
//  DesignModeResearch
//
//  Created by chen on 14-11-28.
//  Copyright (c) 2014年 chen. All rights reserved.
//

#import "SecondModel.h"

@implementation SecondModel


-(BaseClass *)createBase
{
    return [[SubClassSecond alloc]init];
}


@end

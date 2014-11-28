//
//  FirstModel.m
//  DesignModeResearch
//
//  Created by chen on 14-11-28.
//  Copyright (c) 2014年 chen. All rights reserved.
//

#import "FirstModel.h"

@implementation FirstModel

-(BaseClass *)createBase
{
    return [[SubClassFirst alloc]init];
}

@end

//
//  FactoryModel.h
//  DesignModeResearch
//
//  Created by chen on 14-11-28.
//  Copyright (c) 2014年 chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SubClassFirst.h"
#import "SubClassSecond.h"

@interface FactoryModel : NSObject

+(SubClassFirst *)createFirst;

+(SubClassSecond *)createSecond;

//情况二用
-(BaseClass*)createBase;

@end

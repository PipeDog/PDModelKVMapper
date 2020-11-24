//
//  PDDataModel.h
//  PDModelKVMapper_Example
//
//  Created by liang on 2020/11/24.
//  Copyright © 2020 liang. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface PDDataModel : NSObject

@property (nonatomic, assign) BOOL boolValue;
@property (nonatomic, assign) int8_t int8_value;
@property (nonatomic, assign) uint8_t uint8_value;
@property (nonatomic, assign) int16_t int16_value;
@property (nonatomic, assign) uint16_t uint16_value;
@property (nonatomic, assign) int32_t int32_value;
@property (nonatomic, assign) uint32_t uint32_value;
@property (nonatomic, assign) int64_t int64_value;
@property (nonatomic, assign) uint64_t uint64_value;
@property (nonatomic, assign) float floatValue;
@property (nonatomic, assign) double doubleValue;
@property (nonatomic, assign) long double longDoubleValue;
@property (nonatomic, strong) id objectValue;
@property (nonatomic, strong) Class classValue;
@property (nonatomic, assign) SEL sel;
@property (nonatomic, copy) dispatch_block_t block;
@property (nonatomic, assign) CGSize sizeValue;
@property (nonatomic, assign) CGRect rectValue;
@property (nonatomic, assign) char *charValue;

@end

NS_ASSUME_NONNULL_END

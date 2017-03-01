//
//  NString+MKSDesTests.m
//  SkyUtils
//
//  Created by Mark Yang on 11/18/15.
//  Copyright © 2015 MissionSky. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NSString+MKSDes.h"

@interface NString_MKSDesTests : XCTestCase

@property (nonatomic, strong) NSString *keyEncrypt;
@property (nonatomic, strong) NSString *strBeEncrypt;
@property (nonatomic, strong) NSString *strEncrypted;

@end

#pragma mark -

@implementation NString_MKSDesTests

- (void)setUp {
    [super setUp];
    NSLog(@"==============================================================");
    _keyEncrypt     = @"HELLOWORLD";
    _strBeEncrypt   = @"This is a string will be encrypt";
//    NSLog(@"Encrypt key : %@", _keyEncrypt);
//    NSLog(@"String be encrypt: %@", _strBeEncrypt);
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
    NSLog(@"==============================================================");
}

//- (void)testExample {
//    // This is an example of a functional test case.
//    // Use XCTAssert and related functions to verify your tests produce the correct results.
//}

- (void)testEncrypt1
{
    NSLog(@"TEST Encrypt: %@", _strBeEncrypt);
    _strEncrypted = [NSString encryptUseDES:_strBeEncrypt key:_keyEncrypt];
    NSLog(@"String encrypted : %@", _strEncrypted);
}//

- (void)testEncrypt2
{
    _strEncrypted = @"qJ9ipXkNQmJJWqisva7+vtzi+6jstlLN10AmTYdPK4MSCa63gu/eMA==";
    NSLog(@"TEST Decrypt: %@", _strEncrypted);
    NSString *strDecrypted = [NSString decryptUseDES:_strEncrypted key:_keyEncrypt];
    NSLog(@"String decrypted : %@", strDecrypted);
}

//- (void)testPerformanceExample {
//    // This is an example of a performance test case.
//    [self measureBlock:^{
//        // Put the code you want to measure the time of here.
//    }];
//}

@end

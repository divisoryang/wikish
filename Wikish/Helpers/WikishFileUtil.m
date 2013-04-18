//
//  WikishFileUtil.m
//  Wikish
//
//  Created by YANG ENZO on 12-11-18.
//  Copyright (c) 2012年 Side Trip. All rights reserved.
//

#import "WikishFileUtil.h"

@implementation WikishFileUtil

+ (NSString *)wikishCachePath {
    NSString *path = nil;
    if (nil == path) {
        path = [[self cachePath] stringByAppendingPathComponent:@"wikish"];
    }
    return path;
}

+ (void)createWikishCachFolder {
    if (![[NSFileManager defaultManager] fileExistsAtPath:[self wikishCachePath]]) {
        [[NSFileManager defaultManager] createDirectoryAtPath:[self wikishCachePath] withIntermediateDirectories:YES attributes:nil error:nil];
    }
}

@end

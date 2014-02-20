//
// Created by Marek Mościchowski on 20/02/14.
//


#import <Foundation/Foundation.h>

@class TyphoonBlockComponentFactory;


@interface TyphoonViewControllersRegistrator : NSObject

+ (void)registerViewControllersInFactory:(TyphoonBlockComponentFactory *)factory;

@end
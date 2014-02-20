//
// Created by Marek Mościchowski on 20/02/14.
//


#import "FirstViewController.h"
#import "ThemeProtocol.h"
#import "TyphoonAutowire.h"
#import "TyphoonIntrospectionUtils.h"

@interface FirstViewController ()
@property (nonatomic, strong) id <ThemeProtocol> themeManager;
@end

@implementation FirstViewController {

}

//typhoon_autoWire(@selector(themeManager));

@end
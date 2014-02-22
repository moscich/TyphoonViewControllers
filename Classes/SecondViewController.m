//
// Created by Marek Mościchowski on 20/02/14.
//


#import "SecondViewController.h"
#import "ThemeProtocol.h"
#import "TyphoonAutowire.h"
#import "TyphoonIntrospectionUtils.h"
#import "TyphoonComponentFactory.h"

@interface SecondViewController()
@property (nonatomic, strong) id <ThemeProtocol> themeManager;
@end

@implementation SecondViewController {

}

// There must be something registered to work.
//typhoon_autoWire(@selector(themeManager))

- (void)viewDidLoad
{
    TyphoonComponentFactory *factory = [TyphoonComponentFactory defaultFactory];

    self.themeManager = [[factory allComponentsForType:@protocol(ThemeProtocol)] lastObject];
}

- (void)viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];

    [self colorMe];
}

- (void)colorMe
{
    [self.themeManager colorLabel:self.normalLabel withType:LabelThemeNormalLabel];
    [self.themeManager colorLabel:self.differentLabel withType:LabelThemeMentalLabel];
    [self.themeManager colorLabel:self.differentLabel2 withType:LabelThemeMentalLabel];

    [self.themeManager colorBackground:self.view];

    [self.themeManager fillLogoImage:self.someImageView];
}

@end
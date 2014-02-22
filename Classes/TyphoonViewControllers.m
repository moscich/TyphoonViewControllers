//
// Created by Marek Mościchowski on 20/02/14.
//


#import "TyphoonViewControllers.h"
#import "TyphoonDefinition.h"
#import "FirstViewController.h"
#import "TyphoonInitializer.h"
#import "SecondViewController.h"


@implementation TyphoonViewControllers {

}

- (TyphoonDefinition *)registerFirstViewController
{
    return [TyphoonDefinition withClass:[FirstViewController class] initialization:^(TyphoonInitializer *initializer){
        [initializer initWithSelector:@selector(initWithNibName:bundle:)];
        [initializer injectParameterAtIndex:0 withObject:@"DefaultView"];
        [initializer injectParameterAtIndex:1 withObject:nil];
    } properties:^(TyphoonDefinition *definition){
        [definition injectProperty:@selector(title) withValueAsText:@"FirstViewController"];
        [definition setAfterPropertyInjection:@selector(colorMe)];
    }];
}

- (TyphoonDefinition *)registerSecondViewController
{
    return [TyphoonDefinition withClass:[SecondViewController class] initialization:^(TyphoonInitializer *initializer){
        [initializer initWithSelector:@selector(initWithNibName:bundle:)];
        [initializer injectParameterAtIndex:0 withObject:@"SecondView"];
        [initializer injectParameterAtIndex:1 withObject:nil];
    } properties:^(TyphoonDefinition *definition){
        [definition injectProperty:@selector(title) withValueAsText:@"SecondViewController"];
        [definition setAfterPropertyInjection:@selector(colorMe)];
    }];
}

@end
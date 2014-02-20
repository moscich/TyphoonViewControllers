//
// Created by Marek Mościchowski on 20/02/14.
//


#import "TyphoonViewControllers.h"
#import "TyphoonDefinition.h"
#import "FirstViewController.h"
#import "TyphoonInitializer.h"


@implementation TyphoonViewControllers {

}

- (TyphoonDefinition *)registerFirstViewController
{
    FirstViewController *faf = [[FirstViewController alloc] initWithNibName:@"DefaultView" bundle:nil];
    return [TyphoonDefinition withClass:[FirstViewController class] initialization:^(TyphoonInitializer *initializer){
        [initializer initWithSelector:@selector(initWithNibName:bundle:)];
        [initializer injectParameterAtIndex:0 withObject:@"DefaultView"];
        [initializer injectParameterAtIndex:1 withObject:nil];
    } properties:^(TyphoonDefinition *definition){
//        [definition setAfterPropertyInjection:@selector(colorController)];
    }];
}

- (TyphoonDefinition *)registerSecondViewController
{
    return [TyphoonDefinition withClass:[FirstViewController class] initialization:^(TyphoonInitializer *initializer){
        [initializer initWithSelector:@selector(initWithNibName:bundle:)];
        [initializer injectParameterAtIndex:0 withObject:@"DefaultView"];
        [initializer injectParameterAtIndex:1 withObject:nil];
    } properties:^(TyphoonDefinition *definition){

    }];
}

@end
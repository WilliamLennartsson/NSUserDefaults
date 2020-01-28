//
//  ViewController.m
//  userDefaultsDemo
//
//  Created by William Lennartsson on 2020-01-27.
//  Copyright © 2020 William Lennartsson. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // [self saveState];
    [self loadState];
}

// For saving state
- (void) saveState {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    // Define state
    NSDictionary *state = [self convertSelfToDictionary];
    // Set state in defaults dictionary
    [defaults setObject:state forKey:@"state"];
    // Commit the changes
    [defaults synchronize];
    NSLog(@"Saved state : %@", state);
}

// Loading state
- (void) loadState {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    // Get state object from defaults.
    NSDictionary *state = [defaults objectForKey:@"state"];
    NSLog(@"Loaded state: %@", state);
}


// Helper functions to convert Class -> Dictionary and back
//- (Person*) convertDictionaryToSelf: (NSDictionary*)d
//- (NSDictionary*) convertPersonToDictionary: (Person*)p


- (NSDictionary*) convertSelfToDictionary {
    NSDictionary *state = @{
        @"name": @"Bosse",
        @"age": @12,
        @"car": @"volvo"
    };
    return state;
}

@end

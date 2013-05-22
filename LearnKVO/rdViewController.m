//
//  rdViewController.m
//  LearnKVO
//
//  Created by kmd on 5/21/13.
//  Copyright (c) 2013 trendster. All rights reserved.
//

#import "rdViewController.h"
#import "PersonObject.h"
#import "BankObject.h"

@interface rdViewController () {
    PersonObject *pobj;
    BankObject *bobj;
}

@end

@implementation rdViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    pobj = [[PersonObject alloc] init];
    bobj = [[BankObject alloc] init];
    [bobj addObserver:pobj forKeyPath:@"balance" options:NSKeyValueObservingOptionNew context:NULL];
}

-(void)viewDidAppear:(BOOL)animated {
    [bobj setBalance:120];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

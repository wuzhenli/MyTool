//
//  JLViewController.m
//  MyTool
//
//  Created by wuzhenli on 03/06/2019.
//  Copyright (c) 2019 wuzhenli. All rights reserved.
//

#import "JLViewController.h"
#import <XMGSessionManager.h>

@interface JLViewController ()

@property (strong, nonatomic) XMGSessionManager *manager;
    
@end

@implementation JLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor lightGrayColor];
    _manager = [XMGSessionManager new];
}

    
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [_manager request:RequestTypeGet urlStr:@"http://mobile.ximalaya.com/mobile/discovery/v1/anchor/recommend?device=iPhone&version=5.4.27" parameter:nil resultBlock:^(id responseObject, NSError *error) {
        NSLog(@"%@", responseObject);
    }];
}
    
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

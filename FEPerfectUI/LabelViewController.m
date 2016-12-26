//
//  LabelViewController.m
//  FEPerfectUI
//
//  Created by FlyElephant on 16/12/26.
//  Copyright © 2016年 FlyElephant. All rights reserved.
//

#import "LabelViewController.h"

@interface LabelViewController ()

@property (weak, nonatomic) IBOutlet UILabel *showLabel;


@end

@implementation LabelViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.showLabel.opaque = YES;
//    self.showLabel.layer.masksToBounds = YES;
    
    UILabel *testLabel = [[UILabel alloc] initWithFrame:CGRectMake(50, 300, 200, 100)];
    testLabel.backgroundColor = [UIColor darkGrayColor];
    testLabel.text = @"简单-FlyElephant";
//    testLabel.opaque = YES;
    testLabel.font = [UIFont systemFontOfSize:14];
    testLabel.textColor = [UIColor blackColor];
//    testLabel.layer.masksToBounds = YES;
    [self.view addSubview:testLabel];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

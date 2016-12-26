//
//  DetailViewController.m
//  FEPerfectUI
//
//  Created by FlyElephant on 16/12/26.
//  Copyright © 2016年 FlyElephant. All rights reserved.
//

#import "DetailViewController.h"
#import "DetailTableViewCell.h"

static NSString *cellIdentifier = @"DetailTableViewCell";

@interface DetailViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.tableView registerNib:[UINib nibWithNibName:cellIdentifier bundle:[NSBundle mainBundle]] forCellReuseIdentifier:cellIdentifier];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 20;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    DetailTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (indexPath.row%2 == 0) {
        cell.contentLabel.text = @"测试";
    } else {
        cell.contentLabel.text = @"test";
    }
    
//    NSLog(@"Cell的背景颜色---%@",cell.backgroundColor);
//  
    cell.backgroundColor = [UIColor clearColor];
//
//        NSLog(@"Cell的背景颜色---%@",cell.backgroundColor);
    
    cell.contentLabel.backgroundColor = cell.backgroundColor;
    //cell.contentLabel.layer.masksToBounds = YES;// 中文字体需要此设置
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 60.0f;
}

@end

//
//  ViewController.m
//  ocDemo
//
//  Created by 李晓楠 on 2020/11/19.
//  Copyright © 2020 李晓楠. All rights reserved.
//

#import "ViewController.h"
#import "WWlxnTestCell.h"
#import "HWTableViewController.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UITableView * tab = [UITableView new];
   // 注册cell
    [tab registerClass:WWlxnTestCell.class forCellReuseIdentifier:NSStringFromClass(WWlxnTestCell.class)];
    tab.delegate = self;
    tab.frame = CGRectMake(100, 100, 200, 300);
    tab.dataSource = self;
    //table view 加入到父视图中
    [self.view addSubview:tab];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 100;
}

//初始化cell
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    WWlxnTestCell * cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass(WWlxnTestCell.class)];
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if(section ==0){
        return 1;
    }else{
        return 2;
    }
}



//点击事件的
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    WWlxnTestCell *cell = (WWlxnTestCell *)[tableView cellForRowAtIndexPath:indexPath];
    NSString *str = [NSString stringWithFormat:@"点击了第%ld组第%ld行", indexPath.section, indexPath.row];
    
    HWTableViewController *detailView = [[HWTableViewController alloc]init];
    //另一种方式启动的
    [self presentViewController:detailView animated:YES completion:nil];
    // 通过navigationController 方式启动的（需要controller 是个navigationController）
//    [self.navigationController pushViewController:detailView animated:NO];
}


@end

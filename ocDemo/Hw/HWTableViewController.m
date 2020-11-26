//
//  HWTableViewController.m
//  ocDemo
//
//  Created by 李晓楠 on 2020/11/24.
//  Copyright © 2020 李晓楠. All rights reserved.
//

#import "HWTableViewController.h"
#import "HWHeaderView.h"
#import "HWCellModel.h"
#import "HWTableViewCell.h"

@interface HWTableViewController ()

/**
    nonatomic，非原子性访问，不加同步，多线程并发访问会提高性能
    strong 强引用的
 */
@property (nonatomic,strong) NSMutableArray *HWInfoArray;

@end

@implementation HWTableViewController


/**
 初始化array
 */
-(NSMutableArray *)HWInfoArray{
    if(_HWInfoArray == nil){
        _HWInfoArray = [NSMutableArray arrayWithCapacity:42];
    }
    return _HWInfoArray;
}

/**
   将要显示，一定要调用super
 */
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
}

/**
  加载布局文件
 */
- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"viewDidLoad====");
    
    self.navigationItem.title = @"tableView界面的";
    
    self.tableView.tableHeaderView = [[HWHeaderView alloc] initWithFrame:CGRectMake(0,0, self.view.frame.size.width, 100)];
    
    //获取数据的
    [self getInfo];
}

-(void)getInfo{
    NSArray *array = @[
     @[@{@"image":@"hero",@"title":@"标题1",@"subTitle":@"副标题1"},
       @{@"image":@"hero",@"title":@"标题2",@"subTitle":@"副标题2"}],
     @[@{@"image" : @"hero", @"title" : @"标题3", @"subTitle" : @"副标题3"},
       @{@"image" : @"hero", @"title" : @"标题4", @"subTitle" : @"副标题4"},
       @{@"image" : @"hero", @"title" : @"标题5", @"subTitle" : @"副标题5"},
       @{@"image" : @"hero", @"title" : @"标题6", @"subTitle" : @"副标题6"},
       @{@"image" : @"hero", @"title" : @"标题7", @"subTitle" : @"副标题7"}]
    ];
    //转模型保存的
    for(int i=0;i<array.count;i++){
        NSMutableArray *tempArray = [NSMutableArray arrayWithCapacity:42];
        for (NSDictionary *dict in array[i]) {
            [tempArray addObject:[HWCellModel HWInfoWithDictionary:dict]];
        }
        [self.HWInfoArray addObject:tempArray];
    }
}

/**
  
 */
- (void)viewDidAppear:(BOOL)animated{

     NSLog(@"viewDidAppear====");
}
/**
   视图将要消失
 */
- (void)viewWillDisappear:(BOOL)animated{

     NSLog(@"viewWillDisappear====视图将要消失");
}
/**
   视图已经消失的
 */
- (void)viewDidDisappear:(BOOL)animated{
  NSLog(@"viewDidDisappear====视图已经消失的");
}

#pragma mark - Table view data source
//一共有几组数据
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.HWInfoArray.count;
}

//每组数据里面有多少
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.HWInfoArray[section] count];
}


//sell 内容
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    HWTableViewCell *cell = [HWTableViewCell cellWithTableView:tableView];
    //数据
    cell.model = self.HWInfoArray[indexPath.section][indexPath.row];
    return cell;
}
//点击事件的
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    HWTableViewCell *cell = (HWTableViewCell *)[tableView cellForRowAtIndexPath:indexPath];
    NSString *str = [NSString stringWithFormat:@"点击了第%ld组第%ld行", indexPath.section, indexPath.row];
    cell.lable.text = str;
}
//设置行高
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 70.0f;
}

//设置头部标题的
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    if (section == 0) {
    return @"第一组";
    }
    return @"第二组";
}

//设置尾部标题
- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section
{
    if(section==self.HWInfoArray.count-1){
       return @"这是尾部标题";
    }
    return nil;
}
@end

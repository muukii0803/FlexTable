//
//  TestTableViewController.m
//  FlexTable
//
//  Created by 山田宏道 on 2015/02/21.
//  Copyright (c) 2015年 Torques Inc. All rights reserved.
//

#import "TestTableViewController.h"
#import "FlexCell.h"

@interface TestTableViewController ()
<UITableViewDataSource, UITableViewDelegate>

@end

@implementation TestTableViewController
{
	__weak IBOutlet UITableView *tableList;
	
}

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view.
	
	tableList.delegate	= self;
	tableList.dataSource	= self;
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}


#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
	return 30;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
	FlexCell*	cell = [tableView dequeueReusableCellWithIdentifier:@"FlexCell"];
	
	[cell setupContentsForIndexPath:indexPath];
	
	return cell;
}


#pragma mark - UITableViewDelegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
	return [FlexCell heightForTable:tableView forIndexPath:indexPath];
}

@end

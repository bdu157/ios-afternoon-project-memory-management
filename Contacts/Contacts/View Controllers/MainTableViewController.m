//
//  MainTableViewController.m
//  Contacts
//
//  Created by Dongwoo Pae on 11/20/19.
//  Copyright © 2019 Dongwoo Pae. All rights reserved.
//

#import "MainTableViewController.h"
#import "DWPContact.h"
#import "ContactController.h"
#import "DetailViewController.h"

@interface MainTableViewController ()

@property (nonatomic) ContactController *contactController;

@end

@implementation MainTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _contactController = [[ContactController alloc] init];
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    [self.tableView reloadData];
}
#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.contactController.contacts.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    DWPContact *contact = [self.contactController.contacts objectAtIndex:indexPath.row];
    cell.textLabel.text = contact.name;
    
    return cell;
}


- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        DWPContact *contact = [self.contactController.contacts objectAtIndex:indexPath.row];
        [self.contactController removeContact:contact];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"ToUpdateContact"]) {
        NSIndexPath *selectedRow = self.tableView.indexPathForSelectedRow;
        DetailViewController *detailVC = segue.destinationViewController;
        detailVC.contactController = self.contactController;
        detailVC.contact = [self.contactController.contacts objectAtIndex:selectedRow.row];
    } else if ([segue.identifier isEqualToString:@"ToCreateNewContact"]) {
        DetailViewController *detailVC = segue.destinationViewController;
        detailVC.contactController = self.contactController;
    }
}


@end

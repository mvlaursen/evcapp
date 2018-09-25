//
//  TableViewController.m
//  EVCAppProto
//
//  Created by Mike Laursen on 9/8/18.
//  Copyright © 2018 Appamajigger. All rights reserved.
//

#import "DocumentCollection.h"
#import <StoreKit/StoreKit.h>
#import "TableViewCell.h"
#import "TableViewController.h"

@import SafariServices;

@interface TableViewController ()

@end

@implementation TableViewController

static NSString *const kNumDocumentsReadKey = @"NumDocumentsRead";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSInteger numDocumentsRead = [defaults integerForKey:kNumDocumentsReadKey];
    if (numDocumentsRead >= 10) {
        [SKStoreReviewController requestReview];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == 0) {
        NSArray *manuals = [DocumentCollection manuals];
        return manuals.count;
    } else {
        NSArray *sites = [DocumentCollection sites];
        return sites.count;
    }
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    NSBundle *bundle = [NSBundle bundleForClass:[self class]];

    if (section == 0)
        return [bundle localizedStringForKey:@"Section-Manuals" value:@"Manuals" table:nil];
    else
        return [bundle localizedStringForKey:@"Section-Sites" value:@"Sites" table:nil];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TableViewCell *cell = (TableViewCell *) [tableView dequeueReusableCellWithIdentifier:@"Document Cell" forIndexPath:indexPath];
    Document *document = (indexPath.section == 0) ? (Document *) [[DocumentCollection manuals] objectAtIndex:indexPath.row] : (Document *) [[DocumentCollection sites] objectAtIndex:indexPath.row];
    cell.documentName.text = document.name;
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    Document *document = (indexPath.section == 0) ? [[DocumentCollection manuals] objectAtIndex:indexPath.row] : [[DocumentCollection sites] objectAtIndex:indexPath.row];

    SFSafariViewController *svc = [[SFSafariViewController alloc] initWithURL:document.url];
    [self presentViewController:svc animated:YES completion:^{
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        NSInteger numDocumentsRead = [defaults integerForKey:kNumDocumentsReadKey];
        numDocumentsRead++;
        [defaults setInteger:numDocumentsRead forKey:kNumDocumentsReadKey];
    }];
}

@end

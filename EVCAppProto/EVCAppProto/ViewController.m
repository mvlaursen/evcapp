//
//  ViewController.m
//  EVCAppProto
//
//  Created by Mike Laursen on 9/7/18.
//  Copyright © 2018 Appamajigger. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
// TODO: Do we really need an instance variable?
@private
UIDocumentInteractionController *docInteractionController;
}
@end

@implementation ViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)openSampleDocument:(UIButton *)sender {
    docInteractionController = [[UIDocumentInteractionController alloc] init];
    NSURL *url = [[NSBundle mainBundle] URLForResource:@"97Eurovan" withExtension:@"pdf"];
    docInteractionController = [UIDocumentInteractionController interactionControllerWithURL:url];
    docInteractionController.delegate = self;
    [docInteractionController presentPreviewAnimated:YES];
}

// MARK: - UIDocumentInteractionControllerDelegate

- (UIViewController *)documentInteractionControllerViewControllerForPreview:(UIDocumentInteractionController *)controller {
    return self;
}
@end

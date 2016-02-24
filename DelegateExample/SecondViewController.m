//
//  SecondViewController.m
//  DelegateExample
//
//  Created by Kvana Mac Pro 2 on 2/24/16.
//  Copyright © 2016 Narendra. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()
@property (weak, nonatomic) IBOutlet UITextField *inputFiled;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)didSelectButton:(id)sender {
    id<SecondControllerDelegate> svcDelegate= self.delegate;
    if ([svcDelegate respondsToSelector:@selector(didRecieveDataFromSecondViewController:)]) {
        [svcDelegate didRecieveDataFromSecondViewController:self.inputFiled.text];
        [self dismissViewControllerAnimated:YES completion:^{
            
        }];
    }
    
}

- (IBAction)didcanel:(id)sender {
    id<SecondControllerDelegate> svcDelegate= self.delegate;
    if ([svcDelegate respondsToSelector:@selector(didCancleSelection)]) {
        [svcDelegate didCancleSelection];
        [self dismissViewControllerAnimated:YES completion:^{
            
        }];
    }

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

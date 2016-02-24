//
//  ViewController.m
//  DelegateExample
//
//  Created by Kvana Mac Pro 2 on 2/24/16.
//  Copyright © 2016 Narendra. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    

    
    
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)pushToSecondVieW:(id)sender {
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main"
                                                             bundle: nil];
    
    SecondViewController *svc = [mainStoryboard instantiateViewControllerWithIdentifier: @"SecondViewController"];
    svc.delegate=self;
    
    [self presentViewController:svc animated:YES completion:^{
        
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)didRecieveDataFromSecondViewController:(NSString *)data{
    self.label.text=data;
    
}
-(void)didCancleSelection{
    
}
@end

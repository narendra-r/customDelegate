//
//  SecondViewController.h
//  DelegateExample
//
//  Created by Kvana Mac Pro 2 on 2/24/16.
//  Copyright © 2016 Narendra. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController
@property(nonatomic,strong) id delegate;
@end

@protocol SecondControllerDelegate <NSObject>
@optional
-(void)didRecieveDataFromSecondViewController:(NSString*)data;
-(void)didCancleSelection;

@end
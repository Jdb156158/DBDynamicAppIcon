//
//  NewIconsViewController.m
//  DBDynamicAppIcon-Oc
//
//  Created by db J on 2021/1/6.
//

#import "NewIconsViewController.h"

@interface NewIconsViewController ()

@end

@implementation NewIconsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}


- (IBAction)clickNewIocns1Btn:(id)sender {
    [self changeAppIconWithName:@"newIcons1"];
}

- (IBAction)clickNewIocns2Btn:(id)sender {
    [self changeAppIconWithName:@"newIcons2"];
}

- (IBAction)clickNewIocns3Btn:(id)sender {
    [self changeAppIconWithName:@"newIcons3"];
}

- (IBAction)clickNewIocns4Btn:(id)sender {
    [self changeAppIconWithName:@"newIcons4"];
}

- (IBAction)clickNewIocns5Btn:(id)sender {
    [self changeAppIconWithName:@"newIcons5"];
}

- (void)changeAppIconWithName:(NSString *)iconName {
    if (![[UIApplication sharedApplication] supportsAlternateIcons]) {
        return;
    }
    
    if ([iconName isEqualToString:@""]) {
        iconName = nil;
    }
    [[UIApplication sharedApplication] setAlternateIconName:iconName completionHandler:^(NSError * _Nullable error) {
        if (error) {
            NSLog(@"更换app图标发生错误了 ： %@",error);
        }else{
            NSLog(@"已经完成了app图标的更换");
        }
    }];
}

@end

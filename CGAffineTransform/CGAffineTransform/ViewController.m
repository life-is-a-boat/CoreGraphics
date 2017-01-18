//
//  ViewController.m
//  CGAffineTransform
//
//  Created by mac on 2017/1/5.
//  Copyright © 2017年 mac. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<CAAnimationDelegate>
@property (strong, nonatomic) IBOutlet UIView *imageView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)click:(id)sender {
    NSLog(@"click");
    static NSInteger count = 0;
//    CGAffineTransform transform = CGAffineTransformIdentity;
    [UIView animateWithDuration:3. animations:^{
        self.imageView.transform = CGAffineTransformMakeRotation((count%2==0?(1):(0))*M_PI_2);//CGAffineTransformRotate(transform, (count%2==0?(1):(0))*M_PI_2);
    } completion:^(BOOL finished) {
//        self.imageView.transform = CGAffineTransformIdentity;
        count ++;
    }];

//    //旋转动画
//    CABasicAnimation* rotationAnimation =
//    [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];//"z"还可以是“x”“y”，表示沿z轴旋转
//    rotationAnimation.toValue = [NSNumber numberWithFloat:M_PI_2];
//    rotationAnimation.duration = 2.0f;
//    rotationAnimation.removedOnCompletion = NO;
//    rotationAnimation.fillMode = kCAFillModeForwards;
//    rotationAnimation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut]; //缓入缓出
////    transformAnima.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
////    rotationAnimation.autoreverses = YES;
////    rotationAnimation.repeatCount = HUGE_VALF;
////    transformAnima.beginTime = CACurrentMediaTime() + 2;
//    rotationAnimation.delegate = self;
//    [self.imageView.layer addAnimation:rotationAnimation forKey:@"rotation"];
}

- (void)animationDidStop:(CAAnimation *)anim finished:(BOOL)flag
{
    if (flag) {
        self.imageView.transform = CGAffineTransformIdentity;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

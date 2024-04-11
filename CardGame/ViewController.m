//
//  ViewController.m
//  CardGame
//
//  Created by Elaidzha Shchukin on 11.04.2024.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;
 
@end

@implementation ViewController
- (void)setFlipsCount:(int)flipCount {
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
    NSLog(@"flip = %d", self.flipCount);
}

- (void)viewDidLoad {
    [super viewDidLoad];
    //
}

- (IBAction)touchCardButton:(UIButton *)sender {
    
    if ([sender.currentTitle length]) {
        [sender setBackgroundImage:[UIImage imageNamed:@"cardback"]
                          forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
    } else {
        [sender setBackgroundImage:[UIImage imageNamed:@"cardback"]
                          forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
    }
    self.flipCount++;
}

@end

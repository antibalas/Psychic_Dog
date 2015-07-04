//
//  ViewController.m
//  Psychic_Dog
//


#import "ViewController.h"
#import "PhraseViewController.h"

@interface ViewController ()

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

- (IBAction)didTapButton:(UIButton*)sender {
	NSLog(@"View Controller didTapButton");
	PhraseViewController* phraseViewController = [[PhraseViewController alloc] initWithNibName:@"PhraseViewController" bundle:nil];
	[self presentViewController:phraseViewController animated:YES completion:nil];
}


@end

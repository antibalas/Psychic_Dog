//
//  PhraseViewController.m
//  Psychic_Dog
//


#import "PhraseViewController.h"
#import "PhraseLogic.h"

@interface PhraseViewController ()

@property IBOutlet UILabel* phraseLabel;

@end

@implementation PhraseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
	
	NSString* phrase = [PhraseLogic randomPhrase];
	
	self.phraseLabel.text = phrase;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)didTapButton:(UIButton*)sender {
	NSLog(@"PhraseViewController didTapButton");
	[self dismissViewControllerAnimated:YES completion:nil];
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

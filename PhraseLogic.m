//
//  PhraseLogic.m
//  Psychic_Dog
//


#import "PhraseLogic.h"
#include <stdlib.h>

@implementation PhraseLogic

+ (NSArray *)phrases
{
	static NSArray *_phrases;
	static dispatch_once_t onceToken;
	dispatch_once(&onceToken, ^{
		_phrases = @[
					 @"Yes",
					@"No",
					@"Maybe",
					@"Not sure",
					@"Not a snowball’s chance in hell!",
					@"More than certainly!",
					@"Feeling fuzzy - try again later, k?",
					@"Can you rephrase the question?",
					@"It is your destiny...",
					@"Not sure sure about that…",
					@"Signs point to… noooooope",
					@"My sources say yes",
					@"Concentrate and ask again",
					@"Do you want the truth?",
					@"No doubt",
					@"Sure, but it’ll be rough",
					@"You’re barking up the wrong tree",
					@"Absolutely",
					@"Can you give me more information?",
					@"It's definitely possible",
					@"I think so",
					@"Definitely!",
					@"Super cali fragi listic expi alli do cious asdfasdfasdfasdfasdf"];
	});
	return _phrases;
}

+ (NSString*)randomPhrase
{
	NSString* phrase;
	NSArray* phrases = [PhraseLogic phrases];
	int numberOfPhrases = (int)[phrases count];
	NSInteger randomIndex = arc4random_uniform(numberOfPhrases-1);
	phrase = [phrases objectAtIndex:randomIndex];
	return phrase;
}

@end

#import "BattleheartHack.h"

@implementation BattleheartHackListController
- (id)specifiers {
	if(_specifiers == nil) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"BattleheartHack" target:self] retain];
	}
	return _specifiers;
}

-(void)respring {
         system("killall -9 SpringBoard");
}

- (void)link {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.ioscheaters.com"]];
}

@end

// vim:ft=objc

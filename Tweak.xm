/* 
Battleheart Hack
By: Lawivido

Features:
Unlimited Coins [patcher]
*/

#define PLIST_PATH @"/var/mobile/Library/Preferences/BattleheartHack.plist"
#import "writeData.h"
 
inline bool GetPrefBool(NSString *key) {
	return [[[NSDictionary dictionaryWithContentsOfFile:PLIST_PATH] valueForKey:key] boolValue];
}

%ctor {
	if(GetPrefBool(@"kCoins")) {
		writeData(0x714C8,0x071081E0); //Recruit at Tavern
		writeData(0x94828,0x071081E0); //Win a Battle
	} else {
		writeData(0x714C8,0x021041E0); //off
		writeData(0x94828,0x021081E0); //off
	}
}

%hook AppController

-(void)applicationDidBecomeActive:(id)arg {
	UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Battleheart Hack" message:@"Hacked by Lawivido for iOSCheaters.com!" delegate:nil cancelButtonTitle:@"Enjoy!" otherButtonTitles:nil];
	[alert show];
	[alert release];
	%orig;
}

%end

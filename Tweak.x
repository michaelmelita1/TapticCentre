#import <UIKit/UIKit.h>
%hook SBControlCenterController
- (void)_willPresent {
	%orig;
	UIImpactFeedbackGenerator* gen = [[UIImpactFeedbackGenerator alloc] initWithStyle:UIImpactFeedbackStyleRigid];
	[gen prepare];
	[gen impactOccurred];
}
%end

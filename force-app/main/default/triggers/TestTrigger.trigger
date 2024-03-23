trigger TestTrigger on Account (after delete) {
	System.debug('Account deleted');
}
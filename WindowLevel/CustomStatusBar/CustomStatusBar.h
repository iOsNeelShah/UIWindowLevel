@interface CustomStatusBar : UIWindow
{
@private
	/// Text information
	UILabel* _statusLabel;
	/// Activity indicator
	UIActivityIndicatorView* _indicator;
	
	UIViewController *_viewControllerToOpen;
	
	NSDictionary *_dicParamToScreen;
}
-(void)showWithStatusMessage:(NSString*)msg viewController:(UIViewController *)viewController;
-(void)hide;

@end
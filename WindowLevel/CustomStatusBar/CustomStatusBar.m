#import "CustomStatusBar.h"

@implementation CustomStatusBar

-(id)initWithFrame:(CGRect)frame
{
	if ((self = [super initWithFrame:frame]))
	{
		// Place the window on the correct level & position
		self.windowLevel = UIWindowLevelStatusBar + 1.0f;
		self.frame = [UIApplication sharedApplication].statusBarFrame;
		// Create an image view with an image to make it look like the standard grey status bar
		UIImageView* backgroundImageView = [[UIImageView alloc] initWithFrame:self.frame];
		backgroundImageView.image = [[UIImage imageNamed:@"statusbar_background.png"] stretchableImageWithLeftCapWidth:2 topCapHeight:0];
		[self addSubview:backgroundImageView];
		
		_indicator = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
		_indicator.frame = (CGRect){.origin.x = 5.0f, .origin.y = 3.0f, .size.width = self.frame.size.height - 6, .size.height = self.frame.size.height - 6};
		_indicator.hidesWhenStopped = YES;
		[self addSubview:_indicator];
		
		_statusLabel = [[UILabel alloc] initWithFrame:CGRectMake(_indicator.frame.origin.x + _indicator.frame.size.width + 10, 0, self.frame.size.width - (_indicator.frame.origin.x + _indicator.frame.size.width + 2), self.frame.size.height - 3)];
		_statusLabel.backgroundColor = [UIColor clearColor];
		_statusLabel.textColor = [UIColor blackColor];
		_statusLabel.textAlignment=NSTextAlignmentLeft;
		_statusLabel.font = [UIFont boldSystemFontOfSize:10.0f];
		_statusLabel.userInteractionEnabled=TRUE;
		
		UITapGestureRecognizer *tapGes=[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(labelTapGesture)];
		[_statusLabel addGestureRecognizer:tapGes];
		
		[self addSubview:_statusLabel];
	}
	return self;
}

-(void)showWithStatusMessage:(NSString*)msg viewController:(UIViewController *)viewController
{
	if (!msg)
		return;
	_statusLabel.text = msg;
	_viewControllerToOpen=viewController;
	[_indicator startAnimating];
	self.hidden = NO;
}

-(void)labelTapGesture
{
	[self hide];
}

-(void)hide
{
	[_indicator stopAnimating];
	self.hidden = YES;
}

@end
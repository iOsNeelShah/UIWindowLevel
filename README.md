UIWindowLevel
=============

UIWindowLevel with windowlevel

![uiwindowimage1](https://cloud.githubusercontent.com/assets/7766727/3310551/36dd9712-f6b6-11e3-9571-f794b806e68b.png)

How to use
- Download the code
- Copy "CustomStatusBar" folder in you project.
- #Import "CustomStatusBar.h"
- example of usage

  <code>
  _customStatusBar=[[CustomStatusBar alloc] initWithFrame:[UIApplication sharedApplication].statusBarFrame];
  [_customStatusBar showWithStatusMessage:@"This is multi window with it's level." viewController:self];
  </code>

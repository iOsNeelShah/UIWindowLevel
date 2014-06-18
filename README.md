UIWindowLevel
=============

UIWindowLevel with windowlevel

SampleImage:
![uiwindowimage1](https://cloud.githubusercontent.com/assets/7766727/3310551/36dd9712-f6b6-11e3-9571-f794b806e68b.png)

<p>How to use:</p>
<ol>
<li>Download the code</li>
<li>Copy "CustomStatusBar" folder in you project.</li>
<li>#Import "CustomStatusBar.h"</li>
<li>example of usage</li>
  
<code>
  _customStatusBar=[[CustomStatusBar alloc] initWithFrame:[UIApplication sharedApplication].statusBarFrame];
  [_customStatusBar showWithStatusMessage:@"This is multi window with it's level." viewController:self];
</code>

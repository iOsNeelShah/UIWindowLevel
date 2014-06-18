UIWindowLevel
=============

UIWindowLevel with windowlevel

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

![uiwindowimage1](https://cloud.githubusercontent.com/assets/7766727/3310551/36dd9712-f6b6-11e3-9571-f794b806e68b.png)

Please refer <a href="http://iosbyneelshah.blogspot.in/2014/06/using-multiple-uiwindows-in-ios_18.html">iOsNeelShah</a> for more information.

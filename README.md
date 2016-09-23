# Pre-work - TipCalc

TipCalc is a tip calculator application for iOS written in Swift.

Submitted by: audsinthecity

Time spent: 14 hours spent in total (2 hrs initial version, 6 hrs extensions part I, 3 hrs extensions part II, 3 hrs extensions part III. All work submitted before the early pre-work deadline, except for extensions III)

## User Stories

The following **required** functionality is complete:

* [X] User can enter a bill amount, choose a tip percentage, and see the tip and total values.
* [X] Settings page to change the default tip percentage.

The following **optional** features are implemented:
* [X] UI animations
* [X] Remembering the bill amount across app restarts (if <10mins)
* [X] Using locale-specific currency and currency thousands separators.
* [X] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

- [X] Color theme choice in settings
- [X] Initial startup screen animation
- [X] Default breakouts for 2, 3, and 4 diners
- [X] UI look and feel improvements - background colors, font size and color (Futura, dark grey), icons (diners, settings cog, App Icon on phone)
- [X] In-app email so you can remind your friends to pay you back


## Video Walkthrough 

Here's a walkthrough of implemented user stories:

<img src='http://i.imgur.com/aMdJl5z.gif' title='GIF Walkthrough' width='' alt='GIF Walkthrough' />

GIF created with [LiceCap](http://www.cockos.com/licecap/).

Since Simulator can't handle in-app email, here is my email success console message:
<img src='http://i.imgur.com/aK8gVpx.png' title='Mail Success' width='' alt='Mail Success' />'

## Notes

Spent a lot of time trying different things and cobbling together solutions from StackOverflow, online tutorials, videos, official documentation, etc. Since I also design, fair bit of effort on aesthetic aspects in addition to just the code. One thing that was still not fully resolved is using a UIView as a "partial background" and moving it to the back so that you can still work with other elements - tried ordering in Storyboard, using the z position, sendSubviewToBack. In some cases, I am guessing there is redundant code, perhaps when working with user defaults, but I'm not familiar enough with this yet to be more efficient.
Re in-app email, Simulator cannot handle (https://stackoverflow.com/questions/35783581/swift-error-mailcompositionservice-quit-unexpectedly , https://stackoverflow.com/questions/5349139/how-to-send-an-email-through-ios-simulator), however I do get my "success" console printout and you see the email screen come up before the MailCompositionService quit message.
Initial notes - Getting used to hooking up different views in Main.storyboard - it's not always apparent how to undo a connection.


## License

    Copyright 2016 audsinthecity

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.

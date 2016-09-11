# Pre-work - TipCalc

TipCalc is a tip calculator application for iOS written in Swift.

Submitted by: audsinthecity

Time spent: 8 hours spent in total (2 hours initial version, 6 hours for extensions)

## User Stories

The following **required** functionality is complete:

* [X] User can enter a bill amount, choose a tip percentage, and see the tip and total values.
* [X] Settings page to change the default tip percentage.

The following **optional** features are implemented:
* [X] UI animations
* [ ] Remembering the bill amount across app restarts (if <10mins)
* [ ] Using locale-specific currency and currency thousands separators.
* [X] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

- [X] Color theme choice in settings
- [X] Initial startup screen animation
- [X] Default breakouts for 2, 3, and 4 diners
- [X] Appropriate icons - such as number of diners, settings cog, App Icon on phone
- [X] UI look and feel improvements - background colors, font size and color (Futura, dark grey)


## Video Walkthrough 

Here's a walkthrough of implemented user stories:

<img src='http://i.imgur.com/yyn0gWh.gifv' title='GIF Walkthrough' width='' alt='GIF Walkthrough' />

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes

Spent a lot of time trying different things and cobbling together solutions from StackOverflow, online tutorials, videos, official documentation, etc. Since I also design, fair bit of effort on aesthetic aspects in addition to just the code. One thing that was still not fully resolved is using a UIView as a "partial background" and moving it to the back so that you can still work with other elements - tried ordering in Storyboard, using the z position, sendSubviewToBack. In some cases, I am guessing there is redundant code, perhaps when working with user defaults, but I'm not familiar enough with this yet to be more efficient.
Initial notes - Getting used to hooking up different views in Main.storyboard - it's not always apparent how to undo a connection.

If it's important that I implement all of the optional features to have a better shot at joining the program, let me know and I will make it happen.


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

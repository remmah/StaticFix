# StaticFix

When using headphones with your Mac, have you ever tried to play a song or sound effect after a period of silence, only to hear an annoying static pop before your audio starts playing? StaticFix solves this problem by continuously looping a short/silent AIFF file in the background, which keeps the headphone port active and prevents the static pop from occurring.

The app sits in the menu bar, and can be quit from its menu at any time. The energy impact of the app, as measured from the Xcode debug gauge, ranges between 'None' and 'Low', with  an average of 10 idle wakeups per second. The app supports `NSTimer` coalescing for additional energy efficiency.

# Requirements

StaticFix requires macOS 10.14.3 or later due recommended Xcode settings and Universal Binary Support. The earlier v1.0 works going back to 10.9. The app should run on 10.8 and 10.7 if you download the source code corresponding to the 1.0 tag and then commenting out the `tolerance` property on the timer.

# Download

You can download a pre-built version from the [Releases](https://github.com/remmah/StaticFix/releases) tab.

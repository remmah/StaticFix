# StaticFix

When using headphones with your Mac, have you ever tried to play a song or sound effect after a period of silence, only to hear an annoying static pop before your audio starts playing? StaticFix solves this problem by continuously looping a short/silent AIFF file in the background, which keeps the headphone port active and prevents the static pop from occurring.

The app sits in the menu bar, and can be quit from its menu at any time. The energy impact of the app, as measured from the Xcode debug gauge, ranges between 'None' and 'Low', with  an average of 10 idle wakeups per second. The app supports `NSTimer` coalescing for additional energy efficiency.

# Requirements

StaticFix requires macOS 10.9 or later due to the aforementioned use of timer coalescing. Commenting out the `tolerance` property on the timer should allow the app to run on 10.8 and 10.7.

# Download

You can download a pre-built version from the [Releases](https://github.com/remmah/StaticFix/releases) tab. There will also be a pre-built version available through itch.io.

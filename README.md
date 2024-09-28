# Shamiko-Whitelist-Switch
 A Magisk module to switch Shamiko from Blacklist mode to Whitelist mode and vice versa using a switch without going to /data/adb/shamiko to create or delete a file.

## Why?
Because when going to whitelist mode you cannot give root access to the new app that needs root. To have root access it needs to switch to blacklist mode to grant root access. And it's so much work to switch whitelist to blacklist by adding or deleting "whitelist" file in /data/adb/shamiko. this module makes it easier to switch on or off the whitelist mode.

## How to install:
Just like a module would do...

#How to use:
it is set to whitelist by default so if you want to switch to blacklist mode to grant root to a new app turn off the module and it will switch back to blacklist mode. Switch it on, and it makes it back to whitelist mode.
No need to reboot.

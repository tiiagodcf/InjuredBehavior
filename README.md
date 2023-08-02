# Low Health Behavior for FiveM

This script implements an injured animation and disables running when the player's health drops below a certain threshold on your FiveM server.

## Installation

1. Download the script and extract the file into your resources directory.
2. Add `start your_script` to your `server.cfg`.
3. Restart your server.

## Functionality

The script checks the player's health every second. If the health is at or below 129, the injured animation is implemented and the ability to run is disabled. If the player's health goes back above 130, the normal animation is restored and running is re-enabled.

## Support

If you encounter any issues with this script, please open an issue on this project's GitHub page.

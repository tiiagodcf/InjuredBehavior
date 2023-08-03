Sure, here's a README description for the provided code:

---

# Health Check & Screen Effect Script for FiveM

## Overview

This is a Lua script for FiveM, a framework for building multiplayer games based on Rockstar's Grand Theft Auto V. The script continuously checks the player's health and applies certain effects when the player is hurt.

## Features

1. **Health check**: The script constantly checks the player's health. When the player's health drops to 130 or below, the player is considered "hurt".
2. **Injury animation**: If the player's health drops to 130 or below, an injury animation is activated, which changes the player's movement style. This effect is reset when the player's health rises above 130.
3. **Control disable**: When the player is "hurt", certain controls, specifically running (control 21) and jumping (control 22), are disabled.
4. **Screen effect**: In addition to the injury animation, a screen effect called "BeastLaunch" is triggered when the player's health drops to 110 or below. This effect stops when the player's health rises above 110.

## Usage

1. Add this script to your FiveM server resources.
2. Add the resource name to your server configuration's `start` list to ensure the script runs when the server starts.
3. Players in your server should now experience the injury animation and screen effect when their health falls below the specified thresholds.

## Customization

You can customize the health thresholds, the screen effect, and the disabled controls according to your needs. These are defined at the top of the script. Be sure to refer to FiveM's native function documentation for the correct control IDs and screen effect names.

---

Remember to replace the necessary parts like the script's name and the resource name based on your actual script.

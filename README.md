# Voice Proximity Sound Script

## Features

### DrawSphere

```lua
Client.DrawSphere(coords, radius, red, green, blue, alpha)
```

Draws a sphere marker with the specified coordinates, radius, and color values.

- `coords`: The coordinates of the sphere as a Vector3.
- `radius`: The radius of the sphere.
- `red`: The red value of the color.
- `green`: The green value of the color.
- `blue`: The blue value of the color.
- `alpha`: The transparency value of the color.

### CreateProximityRange

```lua
CreateProximityRange(proximityRange, coords)
```

Creates a sphere marker near players and plays a sound effect when they are nearby.

- `proximityRange`: The range at which the sphere marker should be visible.
- `coords`: The coordinates of the sphere as a Vector3.

## Installation

1. Copy the script into the appropriate folder of your FiveM resources.
2. Ensure you have the required dependencies, such as the `pma-voice` script.

## Usage

The script will automatically start once it's included in your resources. The sphere markers and sound effects will be generated based on the voice settings of players nearby.

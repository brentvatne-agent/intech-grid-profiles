# Intech Grid -> Zoom LiveTrak L6 Max Controller

Use two Intech Grid modules to get hands-on control over 4 channels of the Zoom LiveTrak L6 Max, with tilt EQ, mute toggles, and more.

## Hardware

- **Module 1 (PBF4):** 4 faders + 4 knobs
- **Module 2 (EF44):** 4 faders + 4 knobs + 4 buttons
- **Zoom LiveTrak L6 Max**
- A computer running Grid Editor + MIDI routing software

## Layout

### Module 1 (PBF4)

| Element    | Function              |
|------------|-----------------------|
| Faders 1-4 | Channel 1-4 Volume   |
| Knobs 1-4  | Channel 1-4 Tilt EQ  |

Tilt EQ: one knob controls Low EQ and High EQ in opposite directions. Center position (64) = flat. Turn right = brighter (more highs, less lows). Turn left = warmer (more lows, less highs).

### Module 2 (EF44)

| Element     | Function                                          |
|-------------|---------------------------------------------------|
| Faders 1-4  | Channel 1-4 Pan                                  |
| Knobs 1-4   | Channel 1-4 Mid EQ                               |
| Buttons 1-4 | Short press: Mute toggle / Long press: Reset tilt EQ |

### LED Feedback (Buttons)

- Green = unmuted
- Red = muted
- Blue flash = tilt EQ reset

## CC Number Assignments

Set these in the Zoom L6 Editor to match.

| Parameter | Ch 1 | Ch 2 | Ch 3 | Ch 4 |
|-----------|------|------|------|------|
| Volume    | 1    | 7    | 13   | 19   |
| Low EQ    | 2    | 8    | 14   | 20   |
| High EQ   | 3    | 9    | 15   | 21   |
| Mute      | 4    | 10   | 16   | 22   |
| Pan       | 5    | 11   | 17   | 23   |
| Mid EQ    | 6    | 12   | 18   | 24   |

All on MIDI channel 1 (channel 0 in Grid Lua code).

## Setup Instructions

### 1. Configure the Zoom L6 Max

1. Connect the L6 Max to your computer via USB-C
2. Open the Zoom L6 Editor software
3. Assign the CC numbers from the table above to each parameter for channels 1-4

### 2. Program the Intech Grid Modules

1. Connect your Grid modules to your computer
2. Open Grid Editor
3. For each element, open the code editor and paste the Lua code from the files in this repo:
   - `module1-pbf4/` - faders and tilt EQ knobs
   - `module2-ef44/` - pan faders, mid EQ knobs, and mute/reset buttons

Each file is named by element type and number, with the event type in the filename (e.g., `knob1-init.lua`, `knob1-encoder.lua`).

### 3. Route MIDI

Both the Grid and L6 Max are USB MIDI devices (neither is a host), so you need a computer to route MIDI between them.

**macOS options:**
- [MIDI Patchbay](https://github.com/notahat/midi_patchbay) (free)
- Audio MIDI Setup (built-in) with IAC Driver
- Any DAW with MIDI routing

Route the Grid's MIDI output to the L6 Max's MIDI input.

## Notes

- The long press tilt EQ reset sends CC values to the L6 Max but cannot physically reposition the knob on Module 1. The knob will be out of sync until you next turn it, at which point it will "jump" to the new position.
- All code uses MIDI channel 0 (channel 1 in standard MIDI terminology). Edit the first parameter of `midi_send()` calls if you need a different channel.
- The 400-character limit per action chain in Grid Lua is tight. The button code is the most complex - if you hit limits, you can merge action blocks into a single code block in Grid Editor.

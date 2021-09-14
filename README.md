# LiveSplit.QuakeRemastered

LiveSplit Auto Splitter for Quake (2021) / Quake Remastered. Built using [LiveSplit's Auto Splitter Language](https://github.com/LiveSplit/LiveSplit.AutoSplitters/blob/master/README.md) for the vanilla game, no mods needed.

## How it Works

This is a very simple splitter, that relies on the changing of map names to know when to split. It is intended (as of writing this) only for the original Quake campaign. There is a special case for the last level `end` where the timer will split only if the congratulations text appears.

## Installation

Right now, the only way is to download the `QuakeRemastered.asl` file, and point LiveSplit to it. To do that see [here](https://github.com/LiveSplit/LiveSplit.AutoSplitters/blob/master/README.md#testing-your-script) for how to test an ASL script.

## Future Plans

- Fix possible issue with not splitting, caused by CurrentMap turning blank during the map change and the script not recovering correctly.
- If extra functionality is needed (or desired) I will consider moving this to a C# solution. This could include:
    - Ability to set event's for each split, giving people full control
    - An event for specific map, giving some security around accidentaly loading a save from a pervious level
- Support for other campaigns, like Scourge of Armagon, etc
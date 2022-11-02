# ⚠ **Currently broken** ⚠

Due to game updates in the last year, I haven't been able to generate new pointers thus breaking the AutoSplitter. I have tried quite a few times not to get something working again but I still have no luck. I wonder if it's due to how the engine works or something along those lines.

But as for this AutoSplitter, it is officially broken and will continue to be until either my skills in Cheat Engine improve or someone finds pointers that don't break after restarting the game.

I will still monitor for PRs and issues if anyone wants to help, but I am sorry for the inconvenience.

# LiveSplit.QuakeRemastered

LiveSplit Auto Splitter for Quake (2021) / Quake Remastered. Built using [LiveSplit's Auto Splitter Language](https://github.com/LiveSplit/LiveSplit.AutoSplitters/blob/master/README.md) for the vanilla game, no mods needed.

## How it Works

This is a very simple splitter, that relies on the changing of map names to know when to split. It is intended (as of writing this) only for the original Quake campaign. There is a special case for the last level `end` where the timer will split only if the congratulations text appears.

## Installation

Right now, the only way is to download the `QuakeRemastered.asl` file, and point LiveSplit to it. To do that see [here](https://github.com/LiveSplit/LiveSplit.AutoSplitters/blob/master/README.md#testing-your-script) for how to test an ASL script.

## Future Plans

- Settings for Episode Runs (e.g. Start on e2m1, finish on e2m6 time screen)
- Support for other campaigns, like Scourge of Armagon, etc
- If extra functionality is needed (or desired) I will consider moving this to a C# solution. This could include:
    - Ability to set event's for each split, giving people full control
    - An event for specific map, giving some security around accidentaly loading a save from a pervious level
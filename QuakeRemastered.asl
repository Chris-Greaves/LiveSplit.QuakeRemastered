state("Quake_x64_steam")
{
    string255 mapName: 0x017EAE38, 0x230, 0x10, 0x30, 0x0;
    int gameState: 0x01AF4EC0, 0x170;
}

startup
{
    settings.Add("run_episode", false, "Select when doing Episode Runs. Set's AutoStart on first map of each Ep. and Splits at Time Screen on last map of each Ep.");
}

init 
{
    // Needed to replace old.mapName because of level loading blanking out value
    vars.latestSplitMap = "";

    // Array of Episode ending maps
    vars.epEndMaps = "|e1m7|e2m6|e3m6|e4m7|";
}

start
{
    if (settings["run_episode"]) 
    {
        if(current.mapName.EndsWith("m1"))
        {
            vars.latestSplitMap = current.mapName;
            return true;
        }
    }

    if(current.mapName == "start")
    {
        vars.latestSplitMap = current.mapName;
        return true;
    }

    return false;
}

split
{
    // mapName is blank during loading of a level, which causes accidental splitting during quick loads and level restarts.
    // Skip if mapName is blank as level is loading
    if(current.mapName == null || current.mapName.Length == 0) 
    {
        print("Map Skipped: " + old.mapName + " -> " + current.mapName);
        return false;
    }

    if (settings["run_episode"]) 
    {
        if(vars.epEndMaps.Contains("|" + current.mapName + "|") && current.gameState == 1)
        {
            vars.latestSplitMap = current.mapName;
            return true;
        }
    } 
    else
    {
        if(current.mapName == "end" && current.gameState == 2)
        {
            print("BOSS KILLED");
            return true;
        }
    }

    if(current.mapName != vars.latestSplitMap)
    {
        print("Map: " + old.mapName + " -> " + current.mapName);
        print("Current Game State:" + current.gameState);
        vars.latestSplitMap = current.mapName;
        return true;
    }
}
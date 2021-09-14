state("Quake_x64_steam")
{
    string255 mapName: 0x017EAE38, 0x230, 0x10, 0x30, 0x0;
    int gameState: 0x01AF4EC0, 0x170;
}

start
{
    if(current.mapName == "start")
    {
        return true;
    }

    return false;
}

split
{
    // Skip if map has temp been set to empty
    if(current.mapName == null || old.mapName == null || current.mapName.Length == 0 || old.mapName.Length == 0) 
    {
        print("Map Skipped: " + old.mapName + " -> " + current.mapName);
        return false;
    }

    if(current.mapName == "end" && current.gameState == 2)
    {
        print("BOSS KILLED");
        return true;
    }

    if(current.mapName != old.mapName)
    {
        print("Map: " + old.mapName + " -> " + current.mapName);
        print("Current Game State:" + current.gameState);
        return true;
    }
}
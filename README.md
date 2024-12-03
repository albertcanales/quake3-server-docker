# ioquake3 server

> In order to use this server configuration, you must read an agree on the EULA by id Software, which you can find [here](https://ioquake3.org/extras/patch-data/)

### Changing maps

To change to a certain map, you can run the following command in the console:

	map NAME

You have a list of names in the `server.cfg` file. You have pictures of each of them (and many more maps) in the references below.

To go back to the map cycle defined in `server.cfg`, you have to enter into the console:

	vstr d1


### Running other games

This server configuration comes with the mod `instagib`. To play this game, you need the following commands into the console:

	game_restart instagib
	exec server.cfg

You may add more mods by following the same directory structure. Don't forget to add the bind in the Compose file.


### References and useful links

Here you have some useful links to further configure your server.

#### Server configuration

- Example server configuration: https://pingperfect.com/index.php/knowledgebase/515/Quake-3-Arena--Server-Configuration.html
- **Recommended**: Very exhaustive list of commands and configuration options: https://forum.fpsclassico.com/quake-3-config.php
- Extra commands added by ioquake3: https://github.com/ioquake/ioq3/blob/main/README.md#console
- Another list of commands, but uncategorized: http://www.joz3d.net/html/q3console.html
- Very old and simple guide to server configuration: https://planetquake.gamespy.com/View110c.html?view=Guides.Detail&id=52&game=4

#### Server Mods

Server mods allow you to play other gamemodes that are not included in the original game.

- List of mods: http://q3files.com/index-7.html
- Instagib mod (outdated fork of ioquake3): https://github.com/rx-mikkel/instagib
	- Wouldn't recommend it, not as easy as plugging the instagib mod into an existing ioquake3 installation
- **Recommended**: Instagib mod: https://www.fileplanet.com/archive/p-49373/InstaGib-1-29h. It's the one included in the repo.
	- Found it in the following thread: https://discourse.ioquake.org/t/local-match-with-instagib/779


#### User configuration

- Client configuration to play in full resolution: https://github.com/juanmcasillas/quakeIII_2023
- Simple client configuration guide: https://www.tuxarena.com/intro/guide_ioquake3.php

#### Maps

- Included in the official game: https://quake.fandom.com/wiki/Category:Quake_III_Arena_levels
- A lot of maps to download: https://lvlworld.com/

#### Other

- List of Instagib public servers: https://instagib.info/server/quake-3-arena/

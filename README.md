# Quake III Arena Server with Docker

A pre-configured Quake III Arena Server built with Docker, with some nice additions:

- Built-in support for Instagib mod. See [here](#run-mods-and-other-games-like-instagib).
- Many useful resources to tweak your server. See [here](#references-and-useful-links).

This server is based on the [ioquake3 engine](https://ioquake3.org/). You can find more information on the installation process [here](https://ioquake3.org/help/sys-admin-guide/).


## Installation

> In order to use this project, you must read an agree on the EULA by *id Software*, which you can find [here](https://ioquake3.org/extras/patch-data/).

To run the server, you just need to:

0. Have Git and Docker installed. To install Docker, see [here](https://docs.docker.com/engine/install/).

1. Clone the repository:

```sh
git clone github.com/albertcanales/quake3-server-docker quake3
```

2. **Copy the `pak0.pk3` file from your purchased copy of Quake 3 into the newly created `quake3` directory.**

3. Run the server:

```sh
cd quake3 && docker compose up -d
```

Done! The server will be running at `localhost:27960`.

Obviously, you also need to install the game in some clients. Follow [this](https://ioquake3.org/get-it/).

Are you ready to fight?


## Useful commands

### View server's logs

```sh
docker compose logs
```

### Entering the server's console

```sh
docker compose attach quake3
```

All the subsequent commands will be sent to the server's console.

To leave the server's console, you have to press `Ctrl+P` followed by `Ctrl+Q`.

### Change current map

Use this command [in the console](#entering-the-servers-console):

	map NAME

You have some map names in the `server.cfg` file, and many more in [here](#maps).

To go back to the default map cycle, use this command [in the console](#entering-the-servers-console):

	vstr d1

### Run mods and other games (like Instagib!)

This project comes with the Instagib mod. To play this game instead of FFA, use this commands [in the console](#entering-the-servers-console):

	game_restart instagib
	exec server.cfg

You may add more mods or games by following the same directory structure. Don't forget to add the corresponding bind in the Compose file.

If you know of some nice mods, drop a PR!

### Changing the server configuration

You can tweak the server to your liking by modifying the `server.cfg` file. You may find some useful resources [here](#server-configuration).

### Stopping the server

```sh
docker compose down
```


## References and useful links

Here you have some useful links to tweak the server to your liking.

### Server configuration

- Example server configuration: https://pingperfect.com/index.php/knowledgebase/515/Quake-3-Arena--Server-Configuration.html
- **Recommended**: Very exhaustive list of commands and configuration options: https://forum.fpsclassico.com/quake-3-config.php
- Extra commands added by ioquake3: https://github.com/ioquake/ioq3/blob/main/README.md#console
- Another list of commands, but uncategorized: http://www.joz3d.net/html/q3console.html
- Very old and simple guide to server configuration: https://planetquake.gamespy.com/View110c.html?view=Guides.Detail&id=52&game=4

### Server Mods

Server mods allow you to play other game modes that are not included in the original game.

- List of mods (might be outdated): http://q3files.com/index-7.html
- Instagib mod (outdated fork of ioquake3): https://github.com/rx-mikkel/instagib
	- Wouldn't recommend it, not as easy as plugging the instagib mod into an existing ioquake3 installation
- **Recommended**: Instagib mod: https://www.fileplanet.com/archive/p-49373/InstaGib-1-29h. It's the one included in the repo.
	- Found it in the following thread: https://discourse.ioquake.org/t/local-match-with-instagib/779

### User configuration

- Client configuration to play in full resolution: https://github.com/juanmcasillas/quakeIII_2023
- Simple client configuration guide: https://www.tuxarena.com/intro/guide_ioquake3.php

### Maps

- Included in the official game: https://quake.fandom.com/wiki/Category:Quake_III_Arena_levels
- A lot of maps to download: https://lvlworld.com/

### Other

- List of Instagib public servers: https://instagib.info/server/quake-3-arena/


## Help and Contributions

Need any help? Have any suggestions? Feel free to open a pull request or an issue!

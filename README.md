A guide on how to download, install, and run [Forge](https://minecraftforge.net/) for both the [Minecraft](https://www.minecraft.net/) client and server, including instructions for using the GUI installer and command-line method.

If you've ever modded [Minecraft](https://www.minecraft.net/) before, you probably have heard of [Forge](https://minecraftforge.net).

Forge is a classic modding platform that has kept the modding scene in Minecraft alive for many years.

## Table of Contents
- [Requirements](#requirements)
- [Downloading](#downloading)
- [Running & Installing](#running--installing)
    - [Through the GUI Installer](#through-the-gui-installer)
        - [Client Installation](#client-installation)
        - [Server Installation](#server-installation)
    - [Through the Command Line (Linux/PowerShell)](#through-the-command-line-linuxpowershell)
        - [Determine Correct Flags to Pass](#determine-correct-flags-to-pass)
            - [Client Installation](#client-installation-1)
            - [Server Installation](#server-installation-1)
        - [Running the Installer](#running-the-installer)
- [Notes](#notes)
    - [Automatic Restarts](#automatic-restarts)
- [See Also](#see-also)
- [Conclusion](#conclusion)

## Requirements
- A computer running **Windows 10** (or later) or Server, or Linux.
- At least 1 GB of free storage space.
- If you're using a hosting provider for your server, make sure they support custom modded servers and allow you to upload custom files.
- Java
    - Download From: [Adoptium](https://adoptium.net/) or [Oracle](https://www.oracle.com/java/technologies/downloads)

## Downloading
The first thing you'll want to do is download the Forge installer. This process is fairly simple.

1. Download the version of Forge you want from their website [here](https://minecraftforge.net/) ([downloads page](https://files.minecraftforge.net/)).
    * Ensure to select the correct version of Minecraft and Forge.
2. Click the **Installer** download button on the page.
![Forge Download](https://github.com/modcommunity/how-to-download-and-install-forge-on-minecraft-client-and-server/raw/main/images/download01.png)
![Forge Download #2](https://github.com/modcommunity/how-to-download-and-install-forge-on-minecraft-client-and-server/raw/main/images/download02.png)
3. Open the folder or directory where the installer was downloaded.
    - If this is for a server on Windows, you can create a new folder for your server that you'll point the GUI installer to later.

On Windows, your file explorer should look like this, with a file named something like `forge-{VERSION}-installer.jar`.

![Forge Windows Explorer View](https://github.com/modcommunity/how-to-download-and-install-forge-on-minecraft-client-and-server/raw/main/images/win_explorer.png)

## Running & Installing
### Through the GUI Installer
If you intend to run the installer through the GUI, simply double-click the installer JAR file. This will open the Forge installer interface.

![Forge Installer GUI](https://github.com/modcommunity/how-to-download-and-install-forge-on-minecraft-client-and-server/raw/main/images/gui_start.png)

#### Client Installation
If you're installing Forge for your client, we recommend creating a new installation profile through the Minecraft Launcher to keep things organized. This way, you can easily switch between different versions of Minecraft and Forge without affecting your main installation.

In order to do this, please follow these steps:

1. Open the Minecraft Launcher and click on the **Installations** tab at the top.
2. Click the **New installation** button to create a new installation profile.
![New Installation Button](https://github.com/modcommunity/how-to-download-and-install-forge-on-minecraft-client-and-server/raw/main/images/gui_client_install_new.png)
3. Fill out the installation details:
    - **Name** (1): Give your installation a name (e.g., "Forge Test 1.20.1").
    - **Version** (2): Select the version of Minecraft that matches the Forge version you downloaded.
    - **Game Directory** (3): You can leave this as default or specify a custom directory if you want to keep it separate from your main Minecraft installation.
4. Click the **Install** button to create the new installation profile.
    - You may want to uncheck the **Launch after Install** option if you want to install Forge first before launching the game.
![New Installation Profile](https://github.com/modcommunity/how-to-download-and-install-forge-on-minecraft-client-and-server/raw/main/images/gui_client_install_new-2.png)

After creating a new installation profile, you can proceed with the Forge installation:

1. Select the **Install Client** option on the left side of the installer.
2. If necessary, change the **installation directory** to the location of your Minecraft installation.
    - By default, it should point to the correct location.
    - On Windows, this is typically: `C:\Users\{USER}\AppData\Roaming\.minecraft`
3. Click the **OK** button to start the installation process.
![Forge Installer Client](https://github.com/modcommunity/how-to-download-and-install-forge-on-minecraft-client-and-server/raw/main/images/gui_client_config.png)
4. Wait for the installer to download and set up Forge. This may take a few minutes depending on your internet speed and computer performance.
5. Once the installation is complete, you can launch Minecraft using the Forge profile that was created during the installation process.

#### Server Installation
The server installation process is similar, but it has the option to create a server setup instead of installing into an existing Minecraft installation.

1. Select the **Install server** option
2. Change the **Installation Directory** to the folder you created for your server earlier
    - The folder **must** be empty before proceeding with the installation!
3. Click the **OK** button to start the installation process.

![Forge Installer Server](https://github.com/modcommunity/how-to-download-and-install-forge-on-minecraft-client-and-server/raw/main/images/gui_server_config.png)

This will download the necessary server files and set up Forge for your server.

![Forge Installer Server Progress](https://github.com/modcommunity/how-to-download-and-install-forge-on-minecraft-client-and-server/raw/main/images/gui_server_progress.png)

Once the installation is complete, you can start your server using the generated `run.bat` file on Windows or `run.sh` on Linux.

![Forge Installer Server Double Click](https://github.com/modcommunity/how-to-download-and-install-forge-on-minecraft-client-and-server/raw/main/images/gui_server_win_run.png)

**WARNING**: When you initially start the server, the server will exit stating you need to accept the EULA. You can do this by opening the `eula.txt` file and changing `eula=false` to `eula=true`. After accepting the EULA, you can restart the server, and it should run with Forge installed.

### Through the Command Line (Linux/PowerShell)
If you prefer to use the command line, you can run the installer using Java. This method is especially useful for Linux users or those who are comfortable with terminal commands.

#### Determine Correct Flags to Pass
Before running the installer through the command-line, let's quickly go over the different flags you can pass to the installer to specify what you want to install.

##### Client Installation
For a client installation, you will want to pass the following flags (replacing `{DIR_NAME}` with the actual directory name of your Minecraft installation if you want to specify it, otherwise it will default to the correct location):

```bash
--installClient {DIR_NAME}
```

##### Server Installation
For a server installation, you will want to pass the following flags (replacing `{DIR_NAME}` with the actual directory name of your server folder):

```bash
--installServer {DIR_NAME}
```

#### Running the Installer
1. Open your terminal (Linux) or PowerShell (Windows).
    - On Windows, you can right-click in the folder where the installer is located and select **Open in Terminal** or **Open in PowerShell** to quickly navigate to the correct directory.
2. Navigate to the directory where the Forge installer JAR file is located using the `cd` command.
    - For example:
        - Windows: `cd C:\Users\{USER}\Downloads`
        - Linux: `cd /home/{USER}/Downloads`
3. Run the installer using the following command:
    ```bash
    # On Windows
    java -jar .\forge-{VERSION}-installer.jar {FLAGS}

    # On Linux
    java -jar ./forge-{VERSION}-installer.jar {FLAGS}
    ```
    - Replace `{VERSION}` with the actual version number of the installer you downloaded.
    - Replace `{FLAGS}` with the appropriate flags that you determined in the previous section based on whether you're installing for the client or server.
4. Follow the prompts in the terminal to complete the installation process for either the client or server, similar to the GUI method.

You can now start the server using the generated `run.bat` file on Windows or `run.sh` on Linux, and launch Minecraft using the Forge profile that was created during the installation process.

## Notes
### Automatic Restarts
If you're looking to set up automatic restarts for your server, you can create a simple wrapper script that runs the server and restarts it if the main server script crashes or stops. Here's an example of how you can do this on both Windows and Linux.

#### Windows (Batch Script)
Create a new file called `start_server.bat` in the same directory as your server files and `run.bat` with the following contents:

```batch
@echo off
:start
echo Starting Minecraft Forge Server...
title Minecraft Forge Server (Auto-Restart)

:: Call the official forge run script
call run.bat

echo.

echo Server stopped or crashed! Restarting in 10 seconds...
echo Press Ctrl+C to cancel the auto-restart loop.

timeout /t 10

goto start
```

#### Linux (Bash Script)
Create a new file called `start_server.sh` in the same directory as your `run.sh` and server files with the following contents:

```bash
#!/bin/bash

while true; do
    echo "Starting Minecraft Forge Server..."
    echo "Press Ctrl+C to stop the server and exit the auto-restart loop."
    echo "---------------------------------------------"

    # Call the official forge run script
    ./run.sh

    echo "Server stopped or crashed! Restarting in 10 seconds..."
    sleep 10
done
```

##### Using Screen
If you're running your server on Linux, you can use the [`screen`](https://man7.org/linux/man-pages/man1/screen.1.html) command to run your server in a detachable session. This allows you to start the server, detach from the session, and keep it running in the background even if you close your terminal.

You can start the server using `screen` with the automatic restart script above like this:

```bash
screen -S mc-forge ./start_server.sh
```

If you'd like to detach from the screen session while keeping the server running, you can press `Ctrl+A` followed by `D`. To reattach to the session later, use:

```bash
screen -r mc-forge
```

**NOTE**: If only one session is running, you can simply use `screen -r` to reattach without specifying the session name.

## See Also
* [Forge Website](https://minecraftforge.net/)
* [Forge GitHub](https://github.com/MinecraftForge/MinecraftForge)
* [Pterodactyl](https://pterodactyl.io/) - A popular, free, and open source game server control panel that allows you to easily manage your self-hosted Minecraft servers (with Forge support!).

## Conclusion
Forge is a fantastic modding platform that has powered the Minecraft modding scene for many years. Whether you're looking to install it for your client or set up a modded server, the installation process is straightforward and can be done through either a GUI installer or the command line. With Forge, you can enjoy a wide variety of mods and custom content in Minecraft.

If you have any questions or are looking for a modding community to be a part of, consider joining our [Discord server](https://discord.moddingcommunity.com)!

Happy modding!
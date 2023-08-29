#!/bin/bash
#rsync [options] source destination

#Emulationstation settings
rsync -avzh ~/Media_Drives/SMOKI/Games/Emustation/.emulationstation ~/Media_Drives/YAHWEH/Games/Games_Sync/

#Dolphin saves and configs
rsync -avzh ~/Media_Drives/SMOKI/Games/dolphin-emu ~/Media_Drives/YAHWEH/Games/Games_Sync/

#RPCS3 saves and configs
rsync -avzh ~/Media_Drives/SMOKI/Games/rpcs3/.config/rpcs3/dev_hdd0/home/00000001 ~/Media_Drives/YAHWEH/Games/Games_Sync/rpcs3/dev_hdd0/home/

rsync -avzh ~/Media_Drives/SMOKI/Games/rpcs3/.config/rpcs3/config.yml ~/Media_Drives/YAHWEH/Games/Games_Sync/rpcs3/config.yml

rsync -avzh ~/Media_Drives/SMOKI/Games/rpcs3/.config/rpcs3/config_input.yml ~/Media_Drives/YAHWEH/Games/Games_Sync/rpcs3/config_input.yml

rsync -avzh ~/Media_Drives/SMOKI/Games/rpcs3/.config/rpcs3/evdev_positive_axis.yml ~/Media_Drives/YAHWEH/Games/Games_Sync/rpcs3/evdev_positive_axis.yml

rsync -avzh ~/Media_Drives/SMOKI/Games/rpcs3/.config/rpcs3/games.yml ~/Media_Drives/YAHWEH/Games/Games_Sync/rpcs3/games.yml

rsync -avzh ~/Media_Drives/SMOKI/Games/rpcs3/.config/rpcs3/custom_configs ~/Media_Drives/YAHWEH/Games/Games_Sync/rpcs3/

#Citra Saves and Configs
rsync -avzh ~/Media_Drives/SMOKI/Games/3DS/.local/share/citra-emu/sdmc ~/Media_Drives/YAHWEH/Games/Games_Sync/citra-emu/

rsync -avzh ~/Media_Drives/SMOKI/Games/3DS/.config/citra-emu ~/Media_Drives/YAHWEH/Games/Games_Sync/citra-emu/.config/

#Steam gamelist and saves
rsync -avzh ~/Media_Drives/SMOKI/Games/steam ~/Media_Drives/YAHWEH/Games/Games_Sync/

	#Manually copy EVERY SINGLE steam cloud save to the correct folder, going drive by drive. Assume SMOKI is already mounted [FIXME].
	DRIVEONE=~/Media_Drives/SMOKI/Games
	if [ -d "$DRIVEONE" ]; then
		echo "$DRIVEONE is a mounted directory. Attempting steam cloud backup."
		
		rsync -avzh ~/Media_Drives/SMOKI/Games/steam_jail/.config/unity3d/Team\ Cherry/Hollow\ Knight/user1.dat               ~/Media_Drives/SMOKI/Games/steam_cloud/unity3d/Team_Cherry/Hollow_Knight/user1.dat
		
		
		rsync -avzh ~/Media_Drives/SMOKI/Games/steam_jail/.local/share/Skullgirls/SaveData/76561198100151225 ~/Media_Drives/SMOKI/Games/steam_cloud/Skullgirls/SaveData
		
		
	fi
	
	DRIVETWO=~/Media_Drives/YAHWEH/Games
	if [ -d "$DRIVETWO" ]; then
		echo "$DRIVETWO is a mounted directory. Attempting steam cloud backup."
		rsync -avzh ~/Media_Drives/YAHWEH/Games/steam_jail/steamapps/compatdata/389730/pfx/drive_c/users/steamuser/Local\ Settings/Application\ Data/TekkenGame/Saved/SaveGames/TEKKEN7/139885497/customize1.sav                                    ~/Media_Drives/SMOKI/Games/steam_cloud/TEKKEN7/customize1.sav
		rsync -avzh ~/Media_Drives/YAHWEH/Games/steam_jail/steamapps/compatdata/389730/pfx/drive_c/users/steamuser/Local\ Settings/Application\ Data/TekkenGame/Saved/SaveGames/TEKKEN7/139885497/customize2.sav                                    ~/Media_Drives/SMOKI/Games/steam_cloud/TEKKEN7/customize2.sav
		rsync -avzh ~/Media_Drives/YAHWEH/Games/steam_jail/steamapps/compatdata/389730/pfx/drive_c/users/steamuser/Local\ Settings/Application\ Data/TekkenGame/Saved/SaveGames/TEKKEN7/139885497/global1.sav                                       ~/Media_Drives/SMOKI/Games/steam_cloud/TEKKEN7/global1.sav
	fi
	
	DRIVETHREE=~/Media_Drives/ODIN/Games
	if [ -d "$DRIVETHREE" ]; then
		echo "$DRIVETHREE is a mounted directory. Attempting steam cloud backup."
		rsync -avzh ~/Media_Drives/ODIN/Games/steam_jail/steamapps/compatdata/544750/pfx/drive_c/users/steamuser/Local\ Settings/Application\ Data/SoulcaliburVI/Saved/SaveGames/76561198100151225/GAME.sav ~/Media_Drives/SMOKI/Games/steam_cloud/SoulcaliburVI/GAME.sav
		rsync -avzh ~/Media_Drives/ODIN/Games/steam_jail/steamapps/compatdata/544750/pfx/drive_c/users/steamuser/Local\ Settings/Application\ Data/SoulcaliburVI/Saved/SaveGames/76561198100151225/GAME ~/Media_Drives/SMOKI/Games/steam_cloud/SoulcaliburVI/
	fi
	
rsync -avzh ~/Media_Drives/SMOKI/Games/steam_cloud ~/Media_Drives/YAHWEH/Games/Games_Sync/

#Retroarch configs and bios
rsync -avzh ~/Media_Drives/SMOKI/Games/retroarch ~/Media_Drives/YAHWEH/Games/Games_Sync/

#Yuzu saves and configs
rsync -avzh ~/Media_Drives/SMOKI/Games/yuzu/.config ~/Media_Drives/YAHWEH/Games/Games_Sync/yuzu/

rsync -avzh ~/Media_Drives/SMOKI/Games/yuzu/.local ~/Media_Drives/YAHWEH/Games/Games_Sync/yuzu/

#PCSX2 saves and configs
rsync -avzh ~/Media_Drives/SMOKI/Games/PCSX2 ~/Media_Drives/YAHWEH/Games/Games_Sync/

#Xemu saves and configs
rsync -avzh ~/Media_Drives/SMOKI/Games/xemu ~/Media_Drives/YAHWEH/Games/Games_Sync/

#Backup to secondary drive and tertiary drive
EXTRA_BACKUP=~/Media_Drives/ODIN/Games
EXTRA__EXTRA_BACKUP=~/Media_Drives/RHEA/Games
REDUNDANT_BACKUP=~/Media_Drives/KALIKA/Games
if [ -d "$EXTRA_BACKUP" ]; then
    echo "$EXTRA_BACKUP is a mounted directory. Attempting backup write."
    rsync -avzh ~/Media_Drives/YAHWEH/Games/Games_Sync/ ~/Media_Drives/ODIN/Games/Games_Sync
    
    rsync -avzh ~/Media_Drives/YESHUA/Cache/.cache/Download ~/Media_Drives/ODIN/Pictures/.cache/
    
    if [ -d "$EXTRA__EXTRA_BACKUP" ]; then
		echo "$EXTRA__EXTRA_BACKUP is a mounted directory. Attempting backup write."
		rsync -avzh ~/Media_Drives/ODIN/Games/Games_Sync/ ~/Media_Drives/RHEA/Games/Games_Sync
		
		rsync -avzh ~/Media_Drives/YESHUA/Cache/.cache/Download ~/Media_Drives/RHEA/Pictures/.cache/
    fi
    
        if [ -d "$REDUNDANT_BACKUP" ]; then
		echo "$REDUNDANT_BACKUP is a mounted directory. Attempting backup write."
		rsync -avzh ~/Media_Drives/ODIN/Games/Games_Sync/ ~/Media_Drives/KALIKA/Games/Games_Sync
		
		rsync -avzh ~/Media_Drives/YESHUA/Cache/.cache/Download ~/Media_Drives/KALIKA/Pictures/.cache/
    fi
fi


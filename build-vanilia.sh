#!/bin/bash



#get the versions manifest
versionManifestUrl=https://launchermeta.mojang.com/mc/game/version_manifest.json
wget -O version_manifest.json $versionManifestUrl 
#get the manifest of the specifed version
manifest=$(jq -r ".versions[] | select(.id == \"$VERSION\").url" version_manifest.json)
wget -O manifest.json  $manifest
#get the download url
serverDownloadUrl=$(jq -r ".downloads .server .url" manifest.json)

wget -O server.jar  $serverDownloadUrl

java -Xmx1024M -Xms1024M -jar server.jar nogui

#agrees to minecraft eula
echo "eula=true" > eula.txt

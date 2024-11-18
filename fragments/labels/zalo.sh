zalo)
    name="Zalo"
    type="dmg"
    export PATH=$PATH:/usr/local/bin
    echo "Current PATH: $PATH"
    export NODE_PATH=$(/usr/local/bin/npm root -g)
    echo "NODE PATH IS $NODE_PATH"
    nodeScript="/Library/Application Support/Ruffwear/zalogetversion.js"
    downloadURL=$(/usr/local/bin/node "$nodeScript")
    if [[ -z "$downloadURL" ]]; then
      echo "Failed to retrieve the download URL for Zalo."
      exit 1
    fi
    appNewVersion=$(echo "$downloadURL" | sed 's/.*-\([0-9.]*\)\.dmg/\1/')
    if [[ -z "$appNewVersion" ]]; then
      echo "Failed to extract the app version for Zalo."
      exit 1
    fi
    appName="Zalo.app"
    expectedTeamID="CVB6BX97VM" 
  ;;
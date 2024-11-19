zalo)
    name="Zalo"
    type="dmg"
    export PATH=$PATH:/usr/local/bin
    export NODE_PATH=$(/usr/local/bin/npm root -g)
    nodeScript="/Library/Application Support/Ruffwear/zalogetversion.js"
    downloadURL=$(/usr/local/bin/node "$nodeScript")
    appNewVersion=$(echo "$downloadURL" | sed 's/.*-\([0-9.]*\)\.dmg/\1/')
    expectedTeamID="CVB6BX97VM" 
  ;;

namechanger)
    name="NameChanger"
    type="dmg"
    downloadURL="https://mrrsoftware.com/Downloads/NameChanger/Updates/NameChanger-$(curl -s "https://mrrsoftware.com/namechanger/index.html" | grep -o 'v [0-9]\+\.[0-9]\+\.[0-9]\+' | head -n 1 | sed 's/v //' | tr '.' '_').zip"
    appNewVersion=$(curl -s "https://mrrsoftware.com/namechanger/index.html" | grep -o 'v [0-9]\+\.[0-9]\+\.[0-9]\+' | head -n 1 | sed 's/v //')
    expectedTeamID="9F4M7VMTU5"
    versionKey="CFBundleVersion"
    ;;
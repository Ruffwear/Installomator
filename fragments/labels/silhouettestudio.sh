silhouettestudio)
    name="Silhouette Studio"
    type="dmg"
    appNewVersion=$(curl -fs -A "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36" 'https://www.silhouetteamerica.com/software/release-notes/id/3' | grep -o 'id="[0-9]\+\.[0-9]\+\.[0-9]\+"' | sed -e 's/id="//' -e 's/"//' | head -n 1)
    releaseURL="https://d62nvtdcnsm38.cloudfront.net/files/softwares/ss/SS_V${appNewVersion}_M6R.dmg"
    betaURL="https://d62nvtdcnsm38.cloudfront.net/files/softwares/ss/SS_V${appNewVersion}_M6B.dmg"
    if curl --output /dev/null --silent --head --fail "$releaseURL"; then
        downloadURL="$releaseURL"
    else
        downloadURL="$betaURL"
    fi
    expectedTeamID="TAX3B9PB9G"
    ;;
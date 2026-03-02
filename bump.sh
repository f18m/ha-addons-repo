#!/bin/bash

addons=(
  "dnsmasq-dhcp-server"
  "dnsmasq-dhcp-server-beta"
  "voip-client"
  "voip-client-beta"
)

for addon in "${addons[@]}"; do
    echo "-----------------------------------------------------"
    echo "Bumping: $addon"
    echo "-----------------------------------------------------"
    ( cd "$addon" && git pull )
done

echo "-----------------------------------------------------"
echo "All addons have been updated. Committing and pushing changes."
echo "-----------------------------------------------------"
git commit -am "bump"
git push

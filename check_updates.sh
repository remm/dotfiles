#!/usr/bin/env bash
echo "brew: Upgrade outdated, unpinned brews"
brew upgrade
echo "brew: Upgrade all outdated Casks"
brew cask upgrade
echo "MacAppStore: install all pending updates"
mas upgrade
#Notification Center notify
osascript -e 'display notification "Upgrade finished" with title "check_updates.sh"'

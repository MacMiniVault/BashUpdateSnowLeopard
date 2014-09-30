#!/bin/sh

# Uninstalls pached bash binaries from https://github.com/MacMiniVault/BashUpdateSnowLeopard/releases

echo "You will be asked for your system password to uninstall patch"
if [[  $(sw_vers -productVersion | grep -E '10.6.8') ]]
then
if [[ -f /bin/bash.old  ]]
then
sudo chmod +x /bin/bash.old
sudo mv /bin/bash.old /bin/bash
echo "/bin/bash has been reverted to your previous version"
fi
if [[ -f /bin/sh.old  ]]
then
sudo chmod +x /bin/sh.old
sudo mv /bin/sh.old /bin/sh
echo "/bin/sh has been reverted to your previous version"
fi
echo "Please reboot to take full effect"
else
echo "It doesn't look like you are running OS X 10.6.8, can't execute"
fi

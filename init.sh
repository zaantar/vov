#!/bin/bash

###
### terminal output formatting
###
COLOUR_BTW='\033[90m'
COLOUR_WHITE='\033[01;37m'
COLOUR_YELLOW='\e[1;33m'
COLOUR_RESTORE='\033[0m'
COLOUR_RED='\033[91m'


function echo_w() {
    echo -e "$COLOUR_WHITE$1$COLOUR_RESTORE"
}

function echo_y() {
    echo -e "$COLOUR_YELLOW$1$COLOUR_RESTORE"
}



###
### constants
###

CONFIG_HEADER='#\n# This is a generated file for custom modification of Vagrant options.\n# Do not change it manually, use the Customfile instead.\n#\n'
CONFIG_32BIT_BOX='config.vm.box = "ubuntu/trusty32"'


###
### user interaction
###

echo
echo_y "#==============================================================================#"
echo_y "|                              vvv-for-otgs                                    |"
echo_y "#==============================================================================#"
echo



while true; do
    read -p "Do you want to use a 32bit box instead of 64bit? [y/N] " yn
    case $yn in
        [Yy]* ) IN_32BIT_BOX="1"; break;;
        ""|[Nn]* ) IN_32BIT_BOX="0"; break;;
        * ) echo "Please answer yes or no.";;
    esac
done
echo


while true; do
    read -p "Ready to apply the customisations. Continue? [Y/n] " yn
    case $yn in
        ""|[Yy]* ) break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done
echo


# generate the OTGSfile


echo -e "$CONFIG_HEADER" > OTGSfile

if [ "$IN_32BIT_BOX" == "1" ];
then
	echo $CONFIG_32BIT_BOX >> OTGSfile
fi

echo_w "Finished."
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
### otgs init
###

# todo install vagrant plugins (add option to disable this)

function otgs_init {

	# constants
	CONFIG_HEADER='#\n# This is a generated file for custom modification of Vagrant options.\n# Do not change it manually, use the Customfile instead.\n#\n'
	CONFIG_32BIT_BOX='config.vm.box = "ubuntu/trusty32"'


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
}


###
### otgs create site
###

# TODO validate input
function otgs_create_site {

	SITE_NAME="$1"
	SITE_DOMAIN="$1.wordpress.dev"

	echo_w "Running vv..."

	externals/vv/vv create --name "$SITE_NAME" --domain "$SITE_DOMAIN" --debug

	echo_w "vv finished."
}


###
### main
###

echo
echo_y "#==============================================================================#"
echo_y "|                              vvv-for-otgs                                    |"
echo_y "#==============================================================================#"
echo


# parse input and execute the right action

# TODO print help on invalid input

IN_ACTION="$1"

case "$IN_ACTION" in
    init)
		shift
		otgs_init
		;;
		
	site)
		shift
		IN_SITE_ACTION="$1"
		IN_SITE_NAME="$2"
		case "$IN_SITE_ACTION" in
			create)
				otgs_create_site "$IN_SITE_NAME"
				;;
			delete)
				;;
			*)
				echo_w "Unknown site action. Specify 'create' or 'delete'."
				;;
		esac
		;;
	*)
		echo_w "Unknown action. Specify 'init' or 'site'."
		;;
esac


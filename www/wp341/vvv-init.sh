if [ ! -d "htdocs/wp-admin" ]; then
	echo 'Installing WordPress 3.4.1 in wp341/htdocs...'
	if [ ! -d "./htdocs" ]; then
		mkdir ./htdocs
	fi
	cd ./htdocs

	# We can only download this version. wp-cli supports WordPress 3.5.2 and above.
	wp core download --allow-root  --version=3.4.1

	cd -

fi

# this would not work without wp-cli
#cd ./htdocs
#/vagrant/provision/vov_checkout
#cd -
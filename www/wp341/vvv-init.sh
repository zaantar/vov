if [ ! -d "htdocs/wp-admin" ]; then
	echo 'Installing WordPress 3.4.1 in wp341/htdocs...'
	if [ ! -d "./htdocs" ]; then
		mkdir ./htdocs
	fi
	cd ./htdocs

	# We can only download this version. wp-cli supports WordPress 3.5.2 and above.
	wp core download --allow-root  --version=3.4.1

	#wp core config --dbname="wp341" --dbuser=wp --dbpass=wp --dbhost="localhost" --allow-root --extra-php <<PHP
#define('WP_DEBUG', true);
#define('WP_DEBUG_LOG', true);
#PHP
	#wp core install --url=wp341.wordpress.dev --title="wp341" --admin_user=admin --admin_password=password --admin_email=admin@localhost.dev --allow-root
	
	cd -

fi

if [ ! -d "htdocs/wp-admin" ]; then
	echo 'Installing WordPress 3.5.2 in wp352/htdocs...'
	if [ ! -d "./htdocs" ]; then
		mkdir ./htdocs
	fi
	cd ./htdocs
	wp core download --allow-root  --version=3.5.2
	wp core config --dbname="wp352" --dbuser=wp --dbpass=wp --dbhost="localhost" --allow-root --extra-php <<PHP
define('WP_DEBUG', true);
define('WP_DEBUG_LOG', true);
PHP
	wp core install --url=wp352.wordpress.dev --title="wp352" --admin_user=admin --admin_password=password --admin_email=admin@localhost.dev --allow-root
	
	/vagrant/provision/vov_checkout 
	
	cd -

fi

  /*global module:false*/
  module.exports = function(grunt) {

    if( !grunt.option("path") ){
      grunt.log.error( "A folder path where to checkout is mandatory" );
      return;
    }

    var root = grunt.option("path");
    var user = grunt.option("user");
    var pass = grunt.option("passwd");
    var db = grunt.option("db");
    var title = grunt.option("title");
    var mail = grunt.option("email");
    var url = grunt.option("url");

    var build_repos = function( root ){
      var pkg = grunt.file.readJSON('package.json'),
      repos = pkg.checkout.repos, ret = [];

      var len = repos.length;
      for( var i = 0; i < len; i++ ){

          ret.push({
            path: [root, repos[i].path], 
            repo: repos[i].url
          });

      }
      return ret;
    };

    var repos_data = build_repos(root);

    // Project configuration.
    grunt.initConfig({
      install_wp:{
          download:{
              command: 'wp core download',
              stdout: true,
              stderr: false
          },
          config:{
              command: 'wp core config --dbname='+db+' --dbuser='+user+' --dbpass='+pass+' --dbhost=127.0.0.1',
              stdout: true,
              stderr: false
          },
          install:{
              command: 'wp core install --title='+title+' --url='+url+' --admin_user=admin --admin_email='+email+' --admin_password='+pass+'',
              stdout: true,
              stderr: false
          },
      },
      svn_checkout: {
        toolset: {
          repos: repos_data
        }
      },
    });

    // These plugins provide necessary tasks.
    grunt.loadNpmTasks("grunt-svn-checkout", "grunt-exec");

    // Default task.
    grunt.registerTask("default", ["grunt-exec","svn_checkout"]);

  };

# grunt-svn-checkout

> Clone and Pull repos with Grunt

## Getting Started
This plugin requires Grunt.

If you haven't used [Grunt](http://gruntjs.com/) before, be sure to check out the [Getting Started](http://gruntjs.com/getting-started) guide, as it explains how to create a [Gruntfile](http://gruntjs.com/sample-gruntfile) as well as install and use Grunt plugins. Once you're familiar with that process, you may install this plugin with this command:

```shell
npm install grunt-svn-checkout --save-dev
```

Once the plugin has been installed, it may be enabled inside your Gruntfile with this line of JavaScript:

```js
grunt.loadNpmTasks('grunt-svn-checkout');
```

## The "svn_checkout" task

### Overview
In your project's Gruntfile, add a section named `svn_checkout` to the data object passed into `grunt.initConfig()`.

```js
grunt.initConfig({
  svn_checkout: {
    set: {
      repos: [
        // array of object with relative path arrays and repo keys.
      ]
    },
  },
})
```

Now when running `grunt svn_checkout` the plugin will check all paths and see if there is an SVN repo in them. If so, it will run `svn up` on that repository. If it is not present, it will run `svn checkout` with the repository specified.

### Usage Example
In this example, we're pulling two different SVN repos, both located in different places at https://svn.example.com/. The first repo we are checking out to `relative/path/` and the second to `another/path/`. 

```js
grunt.initConfig({
  svn_checkout: {
    example: {
      repos: [
        {
          path: ['relative', 'path'], // relative/path/
          repo: 'https://svn.example.com/something/'
        },
        {
          path: ['another', 'path'] // another/path/
          repo: 'https://svn.example.com/something-else/'
        }
      ]
    },
  },
})
```

## Release History

**0.1.0**

 - First release.
 - Basic svn checkout/update behavior.

## License
Copyright (c) 2014 Luke Woodward. Licensed under the MIT license.

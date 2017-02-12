# Varying OTGS Vagrants or VOV

This is a fork of VVV ([Varying Vagrants Vagrant](https://github.com/Varying-Vagrant-Vagrants/VVV)) with improvements for easier plugin development (originally for Toolset development). It's a free-time project.

**Please take time to read this documentation before you start.**

## Quick links

Be sure to have read the rest of this page before jumping anywhere else.

- [Getting started guide](getting-started)
- [vov sh](vov-sh)
- [Commandline tools](cmdline-tools)
- [Other features](other-modifications)
- [vov_checkout](vov_checkout)
- [Debugging with PhpStorm](debugging)
- [Troubleshooting](troubleshooting)
- [Changelog](changelog)

## So, what is VVV, Vagrant and all this stuff?

Basically, Vagrant is a tool that provides a relatively easy way to automatically create and run a virtual computer on your machine. VVV is a configuration for Vagrant that automatically installs web server and lots of other tools, and installs several WordPress sites on it. 

VVV does most of the heavy lifting... and I would really recommend you to read this nice [Getting Started guide](http://webdevstudios.com/2015/01/14/getting-started-vagrant-vvv-local-development/) to get the general idea about what it can do and what are the benefits.

VOV is built on top of VVV, adding more nice features, tools and improvements. 

## Features

Please keep in mind that this project is very much under development. Only some selected platforms are supported (see below).

These features have been added on top of what VVV offers:

- Easy Vagrant re-configuration
    - 32bit architecture support. Now you can (again) run VOV even on a computer with 32bit architecture. 
    - Low memory mode
    - Two CPU core mode
    - Automatic installation of Vagrant plugins
    - You should be required to enter your GIT and SVN credentials only once.
    - All you need to do is run an [init script](vov-sh#init) before you run `vagrant up` for the first time.
- **Checkout/cloning of OTGS plugins and themes from our repositories, automatically, on all sites.** You only need to provide your credentials when running the init script. Everything else is completely automated and be [easily reconfigured](other-modifications).
- A set of [various WordPress sites](site-management) with different versions.
- [Set of pre-installed plugins](default-plugins) from WordPress plugin repository. Easily customizable.
- Easy [creating and deleting](site-management) of WordPress sites.
- Plenty of [tools, scripts and pre-defined bash aliases](cmdline-tools) for those who like to work with command line
- Few other [minor modifications](other-modifications).

VOV has a "central script", called `vov` (lowercase), that allows to very easily perform the most common actions. Be sure to explore it's [wiki page](vov-sh) before you start.

## Requirements

### Operating system

Those OSes listed below have been tested. If you try different platform and it works for you, please be so kind to report it.

- It should without any doubt run on any sane Ubuntu-based OS from 12.04 above
- Windows 8 or 8.1, 32bit or 64bit (via [Cygwin](https://www.cygwin.com/); the solution with PuTTY suggested by VVV will not work well)
- OS X

### Other requirements

- [VVV's requirements](https://github.com/Varying-Vagrant-Vagrants/VVV#software-requirements)
- [VirtualBox](https://www.virtualbox.org/) - Actually, I am not sure about this. VVV also supports VMWare, but I didn't test it. **If you try VMWare, please tell me about it.**
- at least 1GB free RAM (above your usual usage)... or a swapfile and lot of patience.

## Development

You can see what is happening in the [changelog](changelog).

I will be grateful for any ideas, feature requests, suggestions or criticism. Please use the [issue tracker](https://github.com/zaantar/vov/issues) for those. If you are more experienced with Vagrant or specifically VVV and you're making some relevant customizations, I'll be happy to include them here.

Also, **this documentation needs improvement**. It is under development as well and sometimes you will find here features that are not ready yet. On the other hand, some things already implemented are not documented yet.

## Contributors

Dario, Konstantinos, Riccardo

## License, warranties, security notice - please read

This project is released under the [MIT License](http://opensource.org/licenses/MIT), which also means that it comes **without any kind of warranty**.

You should also know that possible security issues (like passwords stored in plaintext) haven't been addressed, so **it is your own responsibility to run VOV in secure environment**.

## Getting started

Continue to [this page](getting-started) for instructions.

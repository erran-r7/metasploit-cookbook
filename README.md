# Metasploit Cookbook
A cookbook that's useful for spinning up a quick Metasploit instance or
configuring you're metasploit development environment.

# Requirements
## Platform
The following systems are supported ***and*** tested on:
* Mac OS X Mountain Lion and above (10.8+) + Command Line Tools.
* Ubuntu Precise Pangolin and above(12.04+)

A rule of thumb is that if you're running a flavor of linux/unix your system is
already supported. If you're running Windows, feel free to tweak some recipes to
add support by editing the case-when `node[:platform]` blocks and adding
`when 'windows'`.


### Installong the Command Line Tools for OS X

Xcode is a nearly 4GB developer suite Apple offers for free from the Mac App Store. However, for the purposes of getting Berkshelf installed you’ll only need a specific set of command line tools which fortunately take up much less space.  If you don’t mind the 4GB, by all means go for Xcodem from the app store. Otherwise, you’ll have go to connect.apple.com and register an Apple Developer account. Once you’ve registered you can find them at developer.apple.com/xcode by clicking on “View downloads” and finding the appropriate command line tools for your version of OS X.

## Vagrant
* Vagrant 1.2+
* Vagrant Berkshelf 1.3.2+
* Vagrant Omnibus  1.1.0+


# Usage

## Chef
Just include `recipe[metasploit::default]` in your node's run list.

## Vagrant

To create a machine with vagrant ensure you've run the
following commands after installing vagrant from vagrantup.com:

```
# Check if you've already installed the necessary plugins:
vagrant plugin list
# If vagrant-berkshelf (1.3.2+) and vagrant-omnibus (1.1.0) aren't installed:
vagrant plugin install vagrant-berkshelf
vagrant plugin install vagrant-omnibus
```

Once you have the necessary plugins you simply want to run

```
vagrant up
```

# Attributes
TODO: Update me.

# Recipes
## metasploit::default
Creates a Metasploit development environment.

# Authors
* Erran Carey (erran_carey@rapid7.com)

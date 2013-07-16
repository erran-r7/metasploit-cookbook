# Metasploit Cookbook
A cookbook that's useful for spinning up a quick Metasploit instance or
configuring you're metasploit development environment.

# Requirements
## Platform
The following systems are supported ***and*** tested on:
* Mac OS X Mountain Lion and above (10.8+)
* Ubuntu Precise Pangolin and above(12.04+)

A rule of thumb is that if you're running a flavor of linux/unix your system is
already supported. If you're running Windows, feel free to tweak some recipes to
add support by editing the case-when `node[:platform]` blocks and adding
`when 'windows'`.

# Usage
Just include `recipe[metasploit::default]` in your node's run list. If
you'd like to create a machine with vagrant ensure you've run the
following commands after installing vagrant from vagrantup.com:

```
# Check if you've already installed the necessary plugins:
vagrant plugin list
# If vagrant-berkshelf (1.3.2+) and vagrant-omnibus (1.1.0) aren't installed:
vagrant plugin install vagrant-berkshelf
vagrant plugin install vagrant-omnibus
```

# Attributes
TODO: Update me.

# Recipes
## metasploit::default
Creates a Metasploit development environment.

# Authors
* Erran Carey (erran_carey@rapid7.com)

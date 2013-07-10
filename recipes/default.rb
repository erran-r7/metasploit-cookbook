#
# Cookbook Name:: metasploit
# Recipe:: default
#
# Copyright (C) 2013 Rapid7
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Install an array of packages on Ubuntu(Debian)
case node[:platform_family]
when 'debian'
  packages = %w[
    build-essential zlib1g zlib1g-dev libxml2 libxml2-dev libxslt-dev locate
    libreadline6-dev libcurl4-openssl-dev git-core libssl-dev libyaml-dev openssl
    autoconf libtool ncurses-dev bison curl wget postgresql postgresql-contrib
    libpq-dev libapr1 libaprutil1 libsvn1 libpcap-dev ruby
  ]

  # TODO: Use chef-rvm cookbook to install Ruby 1.9.3
  packages.map(&method(:package))
when 'mac_os_x'
  # TODO: Don't just install brew and brew install metasploit
  include_recipe 'homebrew'
  brew_tap 'ecarey-r7/formulae'

  # TODO: Use chef-rvm cookbook to install Ruby 1.9.3
  %w[ruby193 metasploit].map(&method(:package))
else
  # TODO: Require Chef exceptions and use which ever error relates to this:
   UnsupportedPlatform = Class.new(RuntimeError)

   raise(
     UnsupportedPlatform,
     "recipe[metasploit::default] doesn't support #{node[:platform]}"
   )
end

# Puppet bolt testing

Experimenting using Puppet Bolt plans to apply a role, in a similar way to Ansible roles.

## Usage

Assuming Debian or Ubuntu, install the latest Puppet 6 release. In this case, for Debian "stretch":

	wget https://apt.puppetlabs.com/puppet6-release-stretch.deb
	sudo dpkg -i puppet6-release-stretch.deb
	apt update
	apt install puppet-bolt

Now in the working directory of this repository, to apply the "web" role to localhost:

	bolt puppetfile install
	bolt plan run role::web --verbose nodes=localhost


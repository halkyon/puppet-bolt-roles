# Puppet bolt testing

Experimenting using Puppet Bolt plans to apply a role, in a similar way to Ansible roles.

## Usage

See [Installing Bolt docs](https://puppet.com/docs/bolt/latest/bolt_installing.html#install-bolt-on-debian-or-ubuntu).

Setup a test container:

	docker-compose up -d

Get all necessary module dependencies:

	bolt puppetfile install

Apply the "web" role to the container target:

	bolt plan run role::web -t localhost:2000 --verbose -u root -p root --no-host-key-check

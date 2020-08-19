class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDMGgEvTD4t0t7k4a4cPcwltK8F2B1GH4UfpND+4jG10H9tMSkqnEjkw6QwRTnjolJASgG0ypeqvLdpmemcJUBzIwUcBH/Goy3kW7hxn6qQQt+MKpZCoLUfUIYQ2WwddCv54VUfA1gU+ir85+mTnogAjrz11otZH/cOaz2f8Zg/XZTZdmXm9iN6MmqIjdcE4aHMzt5ZdMmmsfyTuj6Ji+OxH94+1GjhnfLRAl1EzN9wVbXRhq0qpziaHyTdp8qHbHdXqHWnC/+v+X4NG8AYOT0rqznbc16owZt975L8hx1CKZ41nmAqd3gszT05w/Yx3ijstEvkzyQw5FZrGr1dzcJZ',
	}  
}

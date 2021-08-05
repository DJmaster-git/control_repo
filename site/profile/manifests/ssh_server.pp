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
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDIr81ikz0yQnupdbdnvTA8u+dvBFJnKVxMRfTl6Da3zgZJoHu3Mpp6oFY7pgVxiP5FE9NHDQVm7jVzh1NihdI39JzynnqkARFSBbJuUFUlb4gbMAKFnYDhEWZ9UacatNY5SgdV3ib9s/oU0xTBv9RfKvVFiwxr3hzhbHMrtzXy2JvqAeRAjtXDf/o8/ElfIAYIMj+O2lHrfvXVaEGU/EOWbccU4AthoW4OyOAWXlwSNI+yqRkDMg4NnW0kLRDiawO/dayG9iPegPp5ksUuNgZ4jNj3Fih+Tft1lUyLj9oFIOtwDl8Hz1DK7Fqr8YF7WjF03x0CVV9PqC/T91b7Li2F',
	}  
}

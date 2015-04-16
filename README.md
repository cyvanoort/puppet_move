Puppet type to move a file
usage:
move{'TITLE':
	ensure		=>	absent,
	source		=>	'/var/tmp/test1',
	destination	=>	'/var/tmp/test2',
}

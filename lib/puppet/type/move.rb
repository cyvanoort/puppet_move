Puppet::Type.newtype(:move) do
	@doc = "Move or rename a file.
		Example:
		
		move{'TITLE':
			ensure		=>	absent,
			source		=>	'/var/tmp/test1',
			destination	=>	'/var/tmp/test2',
		}
	"	
	
	ensurable do
		defaultvalues
		defaultto :absent
	end 
	
	newparam(:source) do
		isnamevar
		desc "The path to the source file"
		validate do |src|
			if (src == "")
				raise ArgumentError, "Move requires 'source' to be defined"
			end
		end
	end
	
	newparam(:destination) do
		desc "The path to the destination file"
		validate do |des|
			if (des == "")
				raise ArgumentError, "Move requires 'destination' to be defined"
			end
		end
	end
end
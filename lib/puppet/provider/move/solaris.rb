require 'fileutils'
Puppet::Type.type(:move).provide(:posix) do
	desc "provider for moving or renaming files."
	def create
		Puppet.debug " ### no create needed"
	end
	
	def destroy
		Puppet.debug " ### file is getting moved"
		FileUtils.mv(@resource[:source], @resource[:destination])
	end
	
	def exists?
		if(!File.file?(@resource[:source]))
			Puppet.debug " ### File "+@resource[:source]+" already moved or not found!"
			false
		else
			true
		end
	end
end
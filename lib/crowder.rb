module Crowder

	VERSION = [1,0]

	def self.version
		VERSION.join(".")
	end

	autoload :Server, "crowder/server"

end

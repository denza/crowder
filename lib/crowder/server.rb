require 'optparse'

module Crowder
	class Server
		class Options
			def parse!(args)
				options = {}
				opt_parser = OptionParser.new("", 24, '  ') do |opts|

					opts.on("-d", "--debug", "set debugging flags (set $DEBUG to true)") {
						options[:debug] = true
					}
				end
			end
		end

		def self.start(options = [])
			new(options).start
		end

		attr_writer :options
		def initialize(options = nil))
			#Set default options
			@options = default_options
			#In case an options are provided make sure to merge
			if options
				@options = default_options.merge(options)
			end

		end

		 def default_options
 			{
		        :environment => environment,
		        :pid         => nil,
		        :Port        => 9292,
		        :Host        => default_host,
		        :AccessLog   => [],
		        :config      => "config.ru"
      		}
		 end
	end
end

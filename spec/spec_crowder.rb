require 'crowder'

RSpec.describe Crowder do
	before do
		@server = Crowder.new('0.0.0.0',6000)
	end
end
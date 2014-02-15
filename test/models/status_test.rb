require 'test_helper'

class StatusTest < ActiveSupport::TestCase
	should validate_presence_of :name
	should validate_presence_of :description

	should have_many :boxStatuses
end

require 'test_helper'

class BoxStatusTest < ActiveSupport::TestCase
	should validate_presence_of :box_id
	should validate_presence_of :status_id
	should belong_to :box
	should belong_to :status
end

require 'test_helper'

class BoxTest < ActiveSupport::TestCase

  should validate_presence_of :name
  should validate_presence_of :description

  should have_many :items
  should have_one :boxStatus
  should have_one :status
end

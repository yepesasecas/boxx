class Status < ActiveRecord::Base
	has_many :boxStatuses

	validates :name, presence: true
	validates :description, presence: true
end

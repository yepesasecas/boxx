class Box < ActiveRecord::Base
	has_many :items, dependent: :destroy
	has_one :boxStatus, dependent: :destroy
	has_one :status, through: :boxStatus
	has_one :boxPlan, autosave: true, dependent: :destroy	
	has_one :plan, through: :boxPlan

	accepts_nested_attributes_for :boxPlan, :boxStatus
	
	validates :name, presence: true
	validates :description, presence: true
	
	delegate :start_day, :end_day, to: :boxPlan
end

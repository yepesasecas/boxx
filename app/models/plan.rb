class Plan < ActiveRecord::Base
	has_many :boxPlans

	validates :name, presence: true
	validates :duration, presence: true
	validates :monthly_value, presence: true
	validates :shipping_value, presence: true

	#SELF
	def self.selectors
		array = []
		self.all.each do |plan|
			array.push([plan.duration_in_string, plan.id])
		end
		return array
	end


	#INSTANCE METHODS
	def price
		duration * monthly_value
	end
	def duration_in_months
		duration.months
	end
	def duration_in_string
		"#{duration} meses"
	end
end

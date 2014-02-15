class BoxPlan < ActiveRecord::Base
	belongs_to :box
	belongs_to :plan

	#validates :box_id, presence: true
	#validates :plan_id, presence: true
	validates :start_day, presence: true
	validates :end_day, presence: true

	before_validation :add_start_day, on: :create
	before_validation :add_end_day, on: :create


	protected

	def add_start_day
		self.start_day = Date.today
	end
	def add_end_day
		self.end_day = start_day + self.plan.duration_in_months
	end
end

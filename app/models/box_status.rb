class BoxStatus < ActiveRecord::Base
	belongs_to :box
	belongs_to :status

	#validates :box_id, presence: true
	#validates :status_id, presence: true

	before_validation :initialize_status



	protected
	def initialize_status
		logger.info  ">>>>>>>>>>Entro al metodo"
		self.status_id ||= initializeStatus( )
	end

	#Mientras definimos cual es el Status para empezar
	private
	def initializeStatus( )
		logger.info  ">>>>>>>>>>Entro al 2o metodo"
		Status.first.id
	end
end

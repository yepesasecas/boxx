class BoxesController < ApplicationController
  before_filter :authenticate_user!
  respond_to :html, :json

  def index
      @box = Box.new(boxPlan: BoxPlan.new, boxStatus: BoxStatus.new)
      @boxes = Box.includes(:items, :status, :plan)
      respond_with(@boxes)
  end
  def show
  	@box = Box.includes(:items, :status, :plan).find(params[:id])
      respond_with(@box)
  end
  def new
  	@box = Box.new
  end
  def create
       @box = Box.new(box_params)
      if @box.save
        redirect_to @box, notice: "La caja se solicito con exito. Mientras te confirmamos el dia de la entrega puedes ir subiendo los articulos a la aplicación"
      else
        redirect_to boxes_path, notice: "La caja no se creo. Intenta de nuevo."
      end
  end

#----------------------------
  private

  def box_params
      params.require(:box).permit(
        :name,
        :description, 
        boxPlan_attributes: [:plan_id, :start_day], 
        boxStatus_attributes: [:name]
        )
  end
end

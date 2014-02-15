class ItemsController < ApplicationController
  before_filter :authenticate_user!
  
  def create
  	@box = Box.find params[:box_id]
  	if @box.items.create item_params
  		redirect_to @box, notice: "Se agrego el articulo #{item_params[:name]} a la caja."
  	end
  end

  #-------------------------
  private
  def item_params
  	params.require(:item).permit(:name, :photo_small_url, :photo_big_url)
  end
end

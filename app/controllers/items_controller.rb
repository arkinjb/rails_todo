class ItemsController < ApplicationController

  def create
    @category = Category.find(params[:category_id])
    @item = @category.items.create(item_params)
    redirect_to category_path(@category)
  end

  private
  # Never trust parameters from the scary internet, only allow the white list through.
  def item_params
    params.require(:item).permit(:content)
  end


end

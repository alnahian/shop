class UpdatesController < ApplicationController
  
    before_filter :load_product 
 
  def create 
    @update = @product.updates.new(params[:update]) 
    if @update.save 
      redirect_to @product, :notice => 'Thanks for your update' 
    else 
      redirect_to @product, :alert => 'Unable to add update' 
    end 
  end 
   
  def destroy 
    @update = @product.updates.find(params[:id]) 
    @update.destroy 
    redirect_to @product, :notice => 'update deleted' 
  end 
   
  private 
    def load_product 
      @product = Product.find(params[:product_id]) 
    end 
  
 
end

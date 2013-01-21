class Update < ActiveRecord::Base
  attr_accessible :description, :effective_date, :product_id, :purchase_date, :unit, :unit_price, :name
  
  belongs_to :product
  
   
  def product_should_be_published 
    errors.add(:product_id, "is not published yet") if product && !product.published? 
  end   
  
  
end

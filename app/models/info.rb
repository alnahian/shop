class Info < ActiveRecord::Base
  attr_accessible :description, :effective_date, :product_id, :purchase_date, :unit, :unit_price
end

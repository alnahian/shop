class Product < ActiveRecord::Base
  attr_accessible :description, :image_url, :price, :published_at, :title
  
  has_many :updates, :dependent => :nullify
  has_many :line_items
  before_destroy :ensure_not_referenced_by_any_line_item
  
  def published? 
    published_at.present? 
  end 
  
  private
# ensure that there are no line items referencing this product
	def ensure_not_referenced_by_any_line_item
		if line_items.empty?
			return true
		else
			errors.add(:base, 'Line Items present')
			return false
		end
	end
  
end

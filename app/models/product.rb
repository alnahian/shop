class Product < ActiveRecord::Base
  attr_accessible :description, :image_url, :price, :published_at, :title
  
  has_many :updates, :dependent => :nullify
  
  def published? 
    published_at.present? 
  end 
  
end

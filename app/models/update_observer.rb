class UpdateObserver < ActiveRecord::Observer

  def after_create(update) 
    puts " We will notify later" 
  end 

end

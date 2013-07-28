class Category < ActiveRecord::Base
  attr_accessible :name
  has_many :blogs

  def blogs_count
    

  end
end

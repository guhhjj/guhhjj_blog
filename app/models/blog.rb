class Blog < ActiveRecord::Base
  attr_accessible :title, :content, :category_id
  belongs_to :category, :counter_cache => true
  has_many :comments,:dependent => :destroy

  
  #def comments=(comments)
  #	@comments = comments
#
 # end
  #def comments
  #	@comments
  #end

  


end

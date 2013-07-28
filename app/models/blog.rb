class Blog < ActiveRecord::Base
  attr_accessible :title, :content, :category_id
  belongs_to :category
  has_many :comments,:dependent => :destroy


end

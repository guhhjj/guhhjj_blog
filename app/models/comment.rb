class Comment < ActiveRecord::Base
  belongs_to :blog, :counter_cache => true
  attr_accessible :body, :commenter,:blog_id, :nickname
end

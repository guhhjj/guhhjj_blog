class AddCommentsCountToBlog < ActiveRecord::Migration
  def self.up    
    add_column :blogs, :comments_count, :integer, :default => 0
    
    # 如果是網站上線後才新增這個功能，這裡需要先計算設定好初始值
    Blog.find_each do |blog|
      blog.update_attribute(:comments_count, blog.comments.count)
    end
  end
  
  def self.down
    remove_column :blogs, :comments_count
  end
end

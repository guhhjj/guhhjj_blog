class AddBlogsCountToCategory < ActiveRecord::Migration
  def self.up    
    add_column :categories, :blogs_count, :integer, :default => 0
    
    # 如果是網站上線後才新增這個功能，這裡需要先計算設定好初始值
    Category.find_each do |category|
      category.update_attribute(:blogs_count, category.blogs.count)
    end
  end
  
  def self.down
    remove_column :categories, :blogs_count
  end
end

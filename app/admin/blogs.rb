ActiveAdmin.register Blog do
  index do
  	column :id
  	column :title
  	column :category
  	column :created_at, :sortable => :created_at do |blog|
  		blog.created_at.strftime('%Y-%m-%d')
  	end
    column :updated_at, :sortable => :updated_at do |blog|
  		blog.updated_at.strftime('%Y-%m-%d')
  	end
  	default_actions

  end
end

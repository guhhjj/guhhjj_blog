ActiveAdmin.register Comment, as: "UserComment" do
  index do
    selectable_column
    column :id
    column :blog
    column :commenter
    column :body
    column :created_at
    default_actions
  end
end
class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title
      t.text   :content
      t.string :created_by
      t.string :updated_by

      t.timestamps
    end
  end
end

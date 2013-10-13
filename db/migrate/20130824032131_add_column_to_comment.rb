class AddColumnToComment < ActiveRecord::Migration
  def change
    add_column :comments, :nickname, :string
  end
end

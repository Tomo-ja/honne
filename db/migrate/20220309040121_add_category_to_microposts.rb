class AddCategoryToMicroposts < ActiveRecord::Migration[7.0]
  def change
    add_column :microposts, :category, :string
  end
end

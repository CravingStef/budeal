class AddCategoryIdToPins < ActiveRecord::Migration
  def change
    add_column :pins, :category_id, :int
  end
end

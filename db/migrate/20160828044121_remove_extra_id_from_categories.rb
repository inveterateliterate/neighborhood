class RemoveExtraIdFromCategories < ActiveRecord::Migration[5.0]
  def change

  end
  remove_column :categories, :category_id
end

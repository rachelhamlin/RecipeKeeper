class ChangeIngredientSsss < ActiveRecord::Migration
  def down
    remove_column :ingredients, :quantity
    remove_column :ingredients, :measurement
  end
end

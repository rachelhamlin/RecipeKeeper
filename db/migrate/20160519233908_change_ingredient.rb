class ChangeIngredient < ActiveRecord::Migration
  def down
    remove_column :quantity, :ingredient
    remove_column :measurement, :ingredient
  end
end

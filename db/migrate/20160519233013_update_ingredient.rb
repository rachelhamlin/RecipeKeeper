class UpdateIngredient < ActiveRecord::Migration
  def change
    add_column :ingredients, :name, :string, :null => false
  end
end

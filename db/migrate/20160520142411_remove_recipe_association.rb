class RemoveRecipeAssociation < ActiveRecord::Migration
  def change
    remove_column :ingredients, :recipe_id
  end
end

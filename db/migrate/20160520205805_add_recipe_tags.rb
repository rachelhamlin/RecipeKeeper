class AddRecipeTags < ActiveRecord::Migration
  def change
    add_column :recipes, :categories, :string
  end
end

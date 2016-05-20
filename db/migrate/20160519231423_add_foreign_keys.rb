class AddForeignKeys < ActiveRecord::Migration
  def change
    add_foreign_key :ingredients, :recipes
  end
end

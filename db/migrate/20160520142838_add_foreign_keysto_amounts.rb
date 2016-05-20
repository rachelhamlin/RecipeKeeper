class AddForeignKeystoAmounts < ActiveRecord::Migration
  def change
    add_foreign_key :amounts, :ingredients
    add_foreign_key :amounts, :recipes
  end
end

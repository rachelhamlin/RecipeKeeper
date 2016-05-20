class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.integer :quantity
      t.string :measurement
      t.references :recipe

      t.timestamps null: false
    end
  end
end

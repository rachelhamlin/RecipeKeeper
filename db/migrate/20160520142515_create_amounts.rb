class CreateAmounts < ActiveRecord::Migration
  def change
    create_table :amounts do |t|
      t.integer :quantity
      t.string :measurement
      t.references :recipe
      t.references :ingredient

      t.timestamps null: false
    end
  end
end

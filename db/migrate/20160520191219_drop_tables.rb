class DropTables < ActiveRecord::Migration
  def change
    drop_table :ingredients, force: :cascade
    drop_table :amounts, force: :cascade
  end
end

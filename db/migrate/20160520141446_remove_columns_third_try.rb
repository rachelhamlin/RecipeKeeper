class RemoveColumnsThirdTry < ActiveRecord::Migration
  def change
    remove_column :ingredients, :quantity
    remove_column :ingredients, :measurement
  end
end

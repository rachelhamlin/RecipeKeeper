class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :recipes, :categories, :category
  end
end

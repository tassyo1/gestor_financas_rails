class ChangeNameColumnType < ActiveRecord::Migration
  def change
   rename_column :categories, :type, :type_category
  end
end

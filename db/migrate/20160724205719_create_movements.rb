class CreateMovements < ActiveRecord::Migration
  def change
    create_table :movements do |t|
      t.float :balance
      t.date :date_launched
      t.references :category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.float :value
      t.date :date_scheduled
      t.string :type, limit: 1
      t.references :frequency, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end

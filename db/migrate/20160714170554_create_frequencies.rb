class CreateFrequencies < ActiveRecord::Migration
  def change
    create_table :frequencies do |t|
      t.string :name, limit:80
      t.timestamps null: false
    end
  end
end

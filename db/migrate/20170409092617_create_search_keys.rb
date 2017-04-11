class CreateSearchKeys < ActiveRecord::Migration[5.1]
  def change
    create_table :search_keys do |t|
      t.string :key
      t.boolean :active, default: true
      t.datetime :search_date

      t.timestamps
    end
  end
end

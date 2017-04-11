class CreateSearchResults < ActiveRecord::Migration[5.1]
  def change
    create_table :search_results do |t|
      t.references :search_key, foreign_key: true
      t.integer :offset
      t.integer :search_total
      t.json :results

      t.timestamps
    end
  end
end

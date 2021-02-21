class CreateStations < ActiveRecord::Migration[5.2]
  def change
    create_table :stations do |t|
      t.string :route
      t.string :name
      t.integer :distance
      t.references :rental, foreign_key: true
      t.timestamps
    end
  end
end

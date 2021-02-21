class CreateRentals < ActiveRecord::Migration[5.2]
  def change
    create_table :rentals do |t|
      t.string :name
      t.integer :rent
      t.text :address
      t.integer :age
      t.timestamps
    end
  end
end

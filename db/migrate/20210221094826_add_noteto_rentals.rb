class AddNotetoRentals < ActiveRecord::Migration[5.2]
  def change
    add_column :rentals, :note, :text
  end
end

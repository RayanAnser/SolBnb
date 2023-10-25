class AddColumnToRooms < ActiveRecord::Migration[7.0]
  def change
    add_column :rooms, :price_per_night, :integer
    add_column :rooms, :capacity, :integer
    add_reference :rooms, :hotel, null: false, foreign_key: true
  end
end

class AddColumnToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :starts_at, :date
    add_column :bookings, :ends_at, :date
    add_reference :bookings, :user, null: false, foreign_key: true
    add_reference :bookings, :room, null: false, foreign_key: true
  end
end

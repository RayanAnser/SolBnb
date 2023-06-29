class AddColumnToHotels < ActiveRecord::Migration[7.0]
  def change
    add_column :hotels, :name, :string
    add_column :hotels, :address, :string
  end
end

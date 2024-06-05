class AddStatusToRentMotorcycles < ActiveRecord::Migration[7.1]
  def change
    add_column :rent_motorcycles, :status, :string
  end
end

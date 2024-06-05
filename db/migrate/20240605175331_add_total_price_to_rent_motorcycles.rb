class AddTotalPriceToRentMotorcycles < ActiveRecord::Migration[7.1]
  def change
    add_column :rent_motorcycles, :total_price, :decimal
  end
end

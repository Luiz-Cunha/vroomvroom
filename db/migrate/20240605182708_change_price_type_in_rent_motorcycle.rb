class ChangePriceTypeInRentMotorcycle < ActiveRecord::Migration[7.1]
  def change
    change_column :rent_motorcycles, :total_price, :integer
  end
end

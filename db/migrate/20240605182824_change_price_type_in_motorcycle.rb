class ChangePriceTypeInMotorcycle < ActiveRecord::Migration[7.1]
  def change
    change_column :motorcycles, :price, :integer
  end
end

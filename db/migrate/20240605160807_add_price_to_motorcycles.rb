class AddPriceToMotorcycles < ActiveRecord::Migration[7.1]
  def change
    add_column :motorcycles, :price, :decimal
  end
end

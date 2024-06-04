class AddUserRefenceToRentMotorcycles < ActiveRecord::Migration[7.1]
  def change
    add_reference :rent_motorcycles, :user, null: false, foreign_key: true
  end
end

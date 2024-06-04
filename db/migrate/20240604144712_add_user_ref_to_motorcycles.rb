class AddUserRefToMotorcycles < ActiveRecord::Migration[7.1]
  def change
    add_reference :motorcycles, :user, null: false, foreign_key: true
  end
end

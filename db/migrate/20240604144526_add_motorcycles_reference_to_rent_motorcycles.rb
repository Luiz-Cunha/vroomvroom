class AddMotorcyclesReferenceToRentMotorcycles < ActiveRecord::Migration[7.1]
  def change
    add_reference :rent_motorcycles, :motorcycle, null: false, foreign_key: true
  end
end

class CreateMotorcycles < ActiveRecord::Migration[7.1]
  def change
    create_table :motorcycles do |t|
      t.string :image_url
      t.string :description
      t.string :type
      t.string :make
      t.string :model
      t.integer :year

      t.timestamps
    end
  end
end

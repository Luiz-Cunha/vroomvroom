class DropColumnNameFromMotorcycles < ActiveRecord::Migration[7.1]
  def change
    remove_column :motorcycles, :image_url, :string
  end
end

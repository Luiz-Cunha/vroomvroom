class AddTypeMToMotorcycles < ActiveRecord::Migration[7.1]
  def change
    add_column :motorcycles, :typeM, :string
    remove_column :motorcycles, :type, :string if column_exists?(:motorcycles, :type)
  end
end

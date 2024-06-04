class ChangeColumnNameInMotorcycles < ActiveRecord::Migration[7.1]
  def change
    rename_column :motorcycles, :type, :typeM
  end
end

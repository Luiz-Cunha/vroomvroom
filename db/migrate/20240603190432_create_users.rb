class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :name
      t.string :email
      t.string :password
      t.string :phone_number
      t.string :address

      t.timestamps
    end
  end
end

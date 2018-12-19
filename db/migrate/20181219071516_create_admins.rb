class CreateAdmins < ActiveRecord::Migration[5.2]
  def change
    create_table :admins do |t|
      t.string :name
      t.integer :number
      t.string :email
      t.string :password
      t.string :address
      t.string :login
      t.timestamps
    end
  end
end

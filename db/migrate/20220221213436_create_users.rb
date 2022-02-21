class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password
      t.string :phone_number
      t.date :date_of_birth
      t.string :profile_picture
      t.boolean :owner

      t.timestamps
    end
  end
end

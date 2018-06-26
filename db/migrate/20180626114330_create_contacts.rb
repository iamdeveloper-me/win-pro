class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :email, unique: true
      t.string :contact_number
      t.string :address

      t.timestamps
    end
  end
end

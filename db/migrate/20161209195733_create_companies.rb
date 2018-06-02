class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string  :name
      t.integer :category
      t.integer :subcategory
      t.string  :city
      t.integer :share
      t.integer :like
      t.decimal :lat, precision: 15, scale: 10
      t.decimal :lng, precision: 15, scale: 10
      t.string  :photo
      t.string  :address

      t.timestamps
    end
  end
end

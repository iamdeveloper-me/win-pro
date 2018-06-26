class CreateDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :details do |t|
      t.string  :detail_type
      t.string  :title
      t.text    :description

      t.timestamps
    end
  end
end

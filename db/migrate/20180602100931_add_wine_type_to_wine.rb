class AddWineTypeToWine < ActiveRecord::Migration[5.0]
  def change
  	add_column :wines, :wine_type, :string
  end
end

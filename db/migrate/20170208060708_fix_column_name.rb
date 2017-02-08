class FixColumnName < ActiveRecord::Migration[5.0]
  def change
  	rename_column :products, :categry_id, :category_id
  end
end

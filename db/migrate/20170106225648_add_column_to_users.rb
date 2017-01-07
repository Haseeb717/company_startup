class AddColumnToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :date_of_birth, :timestamp
    add_column :users, :country, :string
    add_column :users, :biography, :text
    add_column :users, :phone_number, :string
  end
end

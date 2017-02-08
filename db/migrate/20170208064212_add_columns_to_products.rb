class AddColumnsToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :risks, :string
    add_column :products, :future_plans, :string
    add_column :products, :short_description, :string
    add_column :products, :backers_total, :integer,:default=>0
    add_column :products, :raised_amount, :float,:default=>0
    add_reference :products, :user, foreign_key: true
  end
end

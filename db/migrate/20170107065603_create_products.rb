class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :title
      t.string :location
      t.float :funding_goal
      t.text :description
      t.references :categry
      t.string :facebook_url
      t.string :website
      t.boolean :active
      t.timestamps
    end
  end
end

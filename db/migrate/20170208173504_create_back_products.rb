class CreateBackProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :back_products do |t|
      t.references :product, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

class CreateReportProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :report_products do |t|
      t.references :product, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

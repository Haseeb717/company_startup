class AddPaperclipToProduct < ActiveRecord::Migration[5.0]
  def change
  	add_attachment :products, :image
  	add_attachment :products, :video
  end
end

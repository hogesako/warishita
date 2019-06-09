class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.string :title
      t.string :img_url
      t.integer :img_size_id
      t.integer :photo_category_id
      t.boolean :require_payment

      t.timestamps
    end
  end
end
